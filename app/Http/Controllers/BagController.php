<?php

namespace App\Http\Controllers;

use Gloudemans\Shoppingcart\Cart;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class BagController extends Controller
{
    final public function getAllProductsFromCart(): View
    {
        $cartItems = app(Cart::class)->content();
        return view('front.cart')->with('cartItems', $cartItems);
    }

    final public function getProductFromCart(string $productID): JsonResponse
    {
        return response()->json();
    }

    final public function putProductInCart(Request $request): JsonResponse
    {
        return response()->json();
    }

    final public function updateOrDeleteProductInCart(string $productID, Request $request): JsonResponse
    {
        return response()->json();
    }

    final public function getAllProductsFromWishList(): JsonResponse
    {
        return response()->json();
    }

    final public function getProductFromWishList(string $productID): JsonResponse
    {
        return response()->json();
    }

    final public function putProductInWishList(Request $request): JsonResponse
    {
        return response()->json();
    }

    final public function updateOrDeleteProductInWishList(string $productID, Request $request): JsonResponse
    {
        return response()->json();
    }
}
