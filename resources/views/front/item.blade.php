@extends('layouts.main')

@section('title','item')

@section('content')

    <!-- products listing -->
<div class="container">
    <!-- Latest items -->
    <div class="row">
        <div class="small-5 small-offset-1 columns">
            <div class="item-wrapper">
                <div class="img-wrapper">
                    <a href="#">
                        <img src="{{url('images',$items->image)}}"/>
                    </a>
                </div>
            </div>
        </div>
        <div class="small-6 columns">
            <div class="item-wrapper">
                <h3 class="subheader">
                    <span class="price-tag">$ {{$items->price}}</span>
                    <br>
                        {{$items->name}}
                    </br>
                    <p>
                        {{$items->description}}
                    </p>
                </h3>
                <div class="row">
                    <div class="large-12 columns">
                        <label>
                            Available Size
                            <select>
                                <option value="size">
                                    {{$items->size}}
                                </option>

                            </select>
                        </label>
                        <a href="{{route('cart.addItem',$items->id)}}" class="button  expanded">Add to Cart</a>
                    </div>
                </div>
                <p class="text-left subheader">
                    <small>Contact Us For Another Size</small>
                </p>

            </div>
        </div>
    </div>
</div>

@endsection