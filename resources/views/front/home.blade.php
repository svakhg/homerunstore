@extends('layouts.main')

@section('content')

<div id="main">
    <section class="hero text-center">
        <br/>
        <br/>
        <br/>
        <br/>
        <h2>
            <strong>
                Welcome to Homerun Store
            </strong>
        </h2>
        <br>
        <a href="{{url('/items')}}">
            <button class="button large">Check out Our Products</button>
        </a>
    </section>

</div>

  <div id="supporting">
    <div class="supporting">
      <div class="container2">
        <div class="col">
          <h2>Hit</h2>
          <p>Become the best Slugger with your hit and great stuff Bat.</p>
        </div>
        <div class="col">
          <h2>Catch</h2>
          <p>Catch the ball with beatiful and comfortable glove.</p>
        </div>
        <div class="col">
          <h2>Run</h2>
          <p>Run with your speed and the best quality shoes.</p>
        </div>
        <div class="col">
          <h2>Move</h2>
          <p>Move your Team to high Championship with our best premium stuff.</p>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>

    <div class="subheader text-center">
        <h2>
            Our Products
        </h2>
    </div>

    <!-- Latest items -->
    <div class="row">
        @forelse($items->chunk(4) as $chunk)
            @foreach($chunk as $item)
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
            @endforeach
        @empty
            <h3>No products</h3>
        @endforelse
    </div>

<br>
  <div id="about">
    <div class="supporting">
      <div class="container">
        <h2>Go Premium</h2>
        <p>Receive recommendations from our best stuff based on your activity to level up.</p>
      </div>
    </div>
  </div>

      <div id="feature">
    <div class="feature">
      <div class="container">
        <h2> Hit. Catch. Run. Move.</h2>
      </div>
    </div>
  </div>

    <!-- Footer -->
@endsection