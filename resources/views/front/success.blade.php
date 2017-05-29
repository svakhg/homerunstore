@extends('layouts.main')

@section('title','items')
@section('content')

<div id="main">
    <section class="text-center">
        <br/>
        <br/>
        <br/>
        <br/>
        <h2>
            <strong>
                Thank you for your order,
                Please check your email for more information
<br>
<br>
<br>
                Regards,<br>
                Homerun Store
            </strong>
        </h2>
        <br>
        <a href="{{url('/')}}">
            <button class="button large">Go to Homepage</button>
        </a>
    </section>

</div>
@endsection