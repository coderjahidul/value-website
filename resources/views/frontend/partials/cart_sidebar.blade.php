<div class="cart-content-wrap">
    <div class="cart-header">
        <h2 class="header-title">Cart review</h2>
        <button class="cart-close sidebar-close"><i class="fas fa-times"></i></button>
    </div>
    <div class="cart-body">
        <ul class="cart-item-list">
            @php
                $total=0;
            @endphp
            @if($cart)
            
            @foreach($cart as $key=>$item)
                @php
                $total +=$item['price']*$item['quantity'];
                
                // Get stock quantity for variation or product
                $maxQty = 999999; // Default unlimited
                if (isset($item['variation_id']) && !empty($item['variation_id'])) {
                  $stockItem = \App\Models\ProductStock::where(['product_id' => $item['product_id'], 'variation_id' => $item['variation_id']])->first();
                  $stockQty = $stockItem ? $stockItem->quantity : 0;
                  $maxQty = $stockQty > 0 ? $stockQty : 0;
                } elseif (isset($item['product_id'])) {
                  $product = \App\Models\Product::find($item['product_id']);
                  $maxQty = $product && $product->stock_quantity > 0 ? $product->stock_quantity : 0;
                }
                @endphp
            <li class="cart-item">
                <div class="item-img">
                    <a href="{{ route('front.products.show',[$key])}}">
                      <img src="{{ getImage('products', $item['image'])}}" alt="Commodo Blown Lamp">
                    </a>
                    <form method="POST" action="{{ route('front.carts.destroy',[$key])}}" id="cart_remove_form">
                        <input type="hidden" name="segment" value="{{ $segm }}">
                        @csrf
                        @method('DELETE')
                        <button class="close-btn" type="submit"><i class="fas fa-times"></i></button> 
                    </form>
                    
                </div>
                <div class="item-content">
                    <h3 class="item-title"><a href="{{ route('front.products.show',[$item['product_id']])}}">{{ $item['name']}}</a></h3>
                    <div class="item-price"><span class="currency-symbol"></span> {{ priceFormate($item['price'])}}</div>
                    <div class="pro-qty item-quantity" data-segment="{{ $segm }}" data-href="{{ route('front.carts.edit',[$key])}}">
                        <span class="dec qtybtn">-</span>
                        <input type="number" class="quantity-input" value="{{ $item['quantity']}}" max="{{ $maxQty }}" min="1">
                        <span class="inc qtybtn">+</span>
                    </div>
                </div>
            </li>
            @endforeach
            @else
            <li class="cart-item">
                <div class="alert alert-warning"> Your Cart Is Empty !!</div>
            </li>
            @endif
        </ul>
    </div>
    <div class="cart-footer">
        <!--<h3 class="cart-subtotal">-->
        <!--    <span class="subtotal-title">Subtotal:</span>-->
        <!--    <span class="subtotal-amount">{{ priceFormate($total)}}</span>-->
        <!--</h3>-->
        <div class="">
            <a href=" {{ route('front.checkouts.index')}} " style="color: #fff; max-width: 100%; width: 100% !important; text-align: center;" class="axil-btn checkout-btn main-bg w-100 d-block">Checkout</a>
        </div>
    </div>
</div>