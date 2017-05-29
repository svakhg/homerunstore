@extends('layouts.main')

@section('title','items')
@section('content')
    <!-- products listing -->
    <!-- Latest items -->
    <div class="row">
        @forelse($items as $item)
            <div class="small-3 medium-3 large-3 columns">
                <div class="item-wrapper">
                    <div class="img-wrapper">
                        <a href="{{route('cart.addItem',$item->id)}}" class="button expanded add-to-cart">
                            Add to Cart
                        </a>
                        <a href="{{url('images',$item->image)}}">
                            <img src="{{url('images',$item->image)}}"/>
                        </a>
                    </div>
                    <a href="{{route('item',$item->id)}}">
                        <h3>
                            {{$item->name}}
                        </h3>
                    </a>
                    <h5>
                        $ {{$item->price}}

                    </h5>
                    <p>
                        {{$item->description}}
                    </p>
                </div>
            </div>

        @empty

        <h3>No products</h3>

       @endforelse
    </div>
  <br>
@endsection
