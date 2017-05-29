@extends('layouts.main')

@section('title')
    @parent About HomerunStore
@stop

@section('content')
    <div class="container">
        <div class="row row-top-buffer">
            <div class="col-sm-8">
                <div class="jumbotron">
                    <h1>About Homerun Store</h1>
                    <p>Homerun Store is a shop that sells many baseball and softball equipment with high quality with cheap price!</p>
                    
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="well well-sm"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.6570618765495!2d112.79542051407913!3d-7.279805073561011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fa1210be1e99%3A0x5ca117dcb40ca6f!2sTeknik+Informatika+ITS!5e0!3m2!1sid!2sid!4v1495676927456" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></a>.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h1>Contact</h1>
                        @if($errors->any())
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="alert alert-danger">
                                        <h1>Error <span class="glyphicon glyphicon-exclamation-sign"></span></h1>
                                        <ul>
                                            @foreach($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @endif
                            <div class="row contact-errors">
                                <div class="col-sm-12">
                                    <div class="alert alert-danger">
                                        <h1>Error <span class="glyphicon glyphicon-exclamation-sign"></span></h1>
                                        <ul class="messages">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @if(!$contacted)
                        <form id="contact-form" role="form" method="POST" action="{{ url('messages') }}">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input name="sender_name" type="text" class="form-control required" id="name">
                            </div>

                            <div class="form-group">
                                <label for="email">Email Address:</label>
                                <input name="sender_email" type="email" class="form-control required" id="email">
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone Number:</label>
                                <input name="sender_phone" type="phone" class="form-control required" id="phone" maxlength="12">
                            </div>

                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea name="message" rows="5" class="form-control" id="message"></textarea>
                            </div>

                            <button type="submit" class="btn btn-primary">Contact</button>
                        </form>

                        @else
                            <h1>Thank you for Contact Us!</h1>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('footer')
