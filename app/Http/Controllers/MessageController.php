<?php

namespace App\Http\Controllers;

use Exception;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Http\Requests\CreateMessageRequest;
use App\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;

class MessageController extends Controller
{

    protected $_message;
    protected $_request;

    public function __construct(Message $message, Request $request)
    {
        $this->_message = $message;
        $this->_request = $request;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $messages = $this->_message->getSortedMessages();
        } catch(Exception $e)
        {
            $messages = null;
        }

        return view('admin.messages')
            ->withMessages($messages);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            //Save the lead to the database
            $this->_message = new Message();
            $this->_message->sender_name = $request->input('sender_name');
            $this->_message->sender_email = $request->input('sender_email');
            $this->_message->sender_phone = str_replace('-', '', $request->input('sender_phone'));
            $this->_message->message = $request->input('message');
            $this->_message->read = 0;



            $this->_message->save();


            //Construct the email message
            $details['name'] = $this->_message->sender_name;
            $details['email'] = $this->_message->sender_email;
            $details['phone'] = $this->_message->sender_phone;
            $details['content'] = $this->_message->message;

            //Send confirmation to customer
            Mail::send('emails.message-confirm', $details, function($message)
            {
                $message->to($this->_message->sender_email);
            });

            //Send customer info to administrator
            Mail::send('emails.new-message', $details, function($message)
            {
                $message->to(Config::get('messages.site_admin'));
            });

        } catch(Exception $e)
        {
            if($request->ajax())
            {
                return response()->json(['status' => 'error']);
            }
            return redirect('/');
        }

        //Return a JSON response if the form was submitted via AJAX.
        if($request->ajax())
        {
            return response()->json(['status' => 'success'])
                ->withCookie(cookie()->forever('contacted', true));
        }

        //Return a redirect if the form was not submitted via AJAX.
        return redirect('/about')
            ->withCookie(cookie()->forever('contacted', true));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($message_id)
    {
        try {
            $message = $this->_message->findOrFail($message_id);
            $message->read = $this->_request->input('read');
            $message->save();
            return redirect('/admin/messages');
            //return response()->json(['status' => 'success']);

        } catch(Exception $e)
        {
            return response()->json(['status' => 'error']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($message_id)
    {
        try {
            $message = $this->_message->findOrFail($message_id);
            $message->delete();

            return redirect('/admin/messages');

        } catch(Exception $e)
        {
            return redirect('/admin/messages');
        }
    }
}
