<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>
        @yield('title','Homerun Store')
    </title>
    <link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="{{asset('dist/css/bootstrap.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('dist/css/custom.css')}}"/>
    <link rel="stylesheet" href="{{asset('dist/css/main.css')}}"/>
    <link rel="stylesheet" href="{{asset('dist/css/foundation.css')}}"/>
    <link rel="stylesheet" href="{{asset('dist/css/app.css')}}"/>
    <link rel="stylesheet" href="{{asset('dist/css/style.css')}}"/>

    <link href="http://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet">


</head>
<body>
<div class="top-bar">
    <div style="color:white" class="top-bar-left">
        <h4 class="brand-title">
            <a href="{{route('home')}}">
                <i class="fa fa-home fa-lg" aria-hidden="true">
                </i>
                Homerun Store
            </a>
        </h4>
    </div>
    <div class="top-bar-right">
        <ol class="menu">
            <li>
                <a href="{{route('items')}}">
                    ITEMS
                </a>
            </li>
            <li>
                <a href="{{route('about')}}">
                    CONTACT
                </a>
            </li>
            <li> 
            @if(Auth::check())
                <a href="{{route('logout')}}">
                LOGOUT
                </a>
            @else
                <a href="{{route('login')}}">
                LOGIN
                </a>
            @endif
            </li>
            <li>
                @if(Auth::id()==1)
                <a href="{{url('admin')}}">
                ADMIN
                </a>
                @endif
            </li>
            <li>
                <a href="{{route('cart.index')}}">
                    <i class="fa fa-shopping-cart fa-2x" aria-hidden="true">
                    </i>
                    CART
                    <span class="alert badge">
                               {{Cart::count()}}
                            </span>
                </a>
            </li>
        </ol>
    </div>
</div>

@yield('content')
<footer class="footer">
    <div class="row full-width">
        <div class="small-12 medium-4 large-4 columns">
<img src="{{asset('dist/img/logo.png')}}" alt="Logo">
        </div>

        <div class="small-12 medium-4 large-4 columns">
                    <h2>Credit Cards Accepted</h2>
            <i class="fa fa-cc-visa"></i>
            <i class="fa fa-cc-mastercard"></i>
            <i class="fa fa-cc-amex"></i>
            <i class="fa fa-cc-discover"></i>
            <i class="fa fa-cc-diners-club"></i>
            <i class="fa fa-cc-jcb"></i>
        </div>

        <div class="small-12 medium-4 large-4 columns">
            <h3>Follow Us</h3>
            <h2>Homerun Store</h2>
            <ul class="footer-links">
 <!--Facebook-->
<li><button type="button" class="btn btn-lg btn-fb"><i class="fa fa-facebook left"></i> Facebook</button></li>
 <!--Instagram-->
<li><button type="button" class="btn btn-lg btn-ins"><i class="fa fa-instagram left"></i> Instagram</button></li>


            </ul>
        </div>
    </div>
</footer>

<script src="{{asset('dist/js/vendor/jquery.js')}}"></script>
<script type="text/javascript" src="https://js.stripe.com/v3/"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script type="text/javascript">
    Stripe.setPublishableKey('pk_test_MfcArJ8OYr0nkAOWemLiFLQY');
</script>
<script src="{{asset('dist/js/app.js')}}"></script>
<script src="{{asset('dist/js/contact.js')}}"></script>
</body>
</html>
