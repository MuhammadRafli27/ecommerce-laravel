<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request, $id = null)
    {
        $categories = Category::all();
        $products = Product::where('name','LIKE', '%'.$request->search. '%')->paginate(6);
        return view('shop.index', compact('products', 'categories', 'id'));
    }

    public function category($id)
    {
        $categories = Category::all();
        $products = Product::where('category_id', $id)->paginate(6);
        return view('shop.index', compact('products', 'categories', 'id'));
    }

    public function show($id)
    {
        $products = Product::findOrfail($id);
        return view('shop.show', compact('products'));
    }
}
