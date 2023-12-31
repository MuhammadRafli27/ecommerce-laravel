<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Transaction;
use App\Mail\CheckoutMail;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;


class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store()
    {
        $carts = Cart::where('user_id', Auth::user()->id);
        $cartUser = $carts->get();
        $transaction = Transaction::create([
            'user_id' => Auth::user()->id
        ]);

        foreach($cartUser as $cart){
            $transaction->detail()->create([
                'product_id' => $cart->product_id,
                'qty' => $cart->qty
            ]);
        }

        Mail::to($carts->first()->user->email)->send(new CheckoutMail($cartUser));
        Cart::where('user_id', Auth::user()->id)->delete();
        return redirect('/');
    }
}
