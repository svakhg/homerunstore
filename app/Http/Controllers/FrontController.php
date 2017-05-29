<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function index()
    {
        $items=Product::all();

        return view('front.home',compact('items'));
    }

    public function items()
    {
        $items=Product::all();
        return view('front.items',compact('items'));
    }

    public function item(Product $id)
    {
        $items=$id;
        return view('front.item',compact('items'));
    }
}
