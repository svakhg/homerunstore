<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    /**
     * Display the About page.
     *
     * @param Request $request
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $contacted = ($request->cookie('contacted')) ? $request->cookie('contacted') : false;
        return view('front.about')
            ->withContacted($contacted);
    }
}
