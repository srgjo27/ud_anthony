<!-- cart mini area start -->
<div class="cartmini__area tp-all-font-roboto">
    <div class="cartmini__wrapper d-flex justify-content-between flex-column">
        <div class="cartmini__top-wrapper">
            <div class="cartmini__top p-relative">
                <div class="cartmini__top-title">
                    <h4>Keranjang belanja</h4>
                </div>
                <div class="cartmini__close">
                    <button type="button" class="cartmini__close-btn cartmini-close-btn"><i
                            class="fal fa-times"></i></button>
                </div>
            </div>
            <div class="cartmini__shipping">
                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
                        data-width="70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            <div class="cartmini__widget">
                <div class="cartmini__widget-item">
                    <div class="cartmini__thumb">
                        <a href="">
                            <img src="{{ asset('web/assets/img/product/product-1.jpg') }}" alt="">
                        </a>
                    </div>
                    <div class="cartmini__content">
                        <h5 class="cartmini__title"><a href="product-details.html">Level Bolt Smart Lock</a></h5>
                        <div class="cartmini__price-wrapper">
                            <span class="cartmini__price">$46.00</span>
                            <span class="cartmini__quantity">x2</span>
                        </div>
                    </div>
                    <a href="#" class="cartmini__del"><i class="fa-regular fa-xmark"></i></a>
                </div>
            </div>
            <!-- for wp -->
            <!-- if no item in cart -->
            <div class="cartmini__empty text-center d-none">
                <img src="{{ asset('web/assets/img/product/cartmini/empty-cart.png') }}" alt="">
                <p>Keranjang anda kosong</p>
                <a href="shop.html" class="tp-btn">Pergi Belanja</a>
            </div>
        </div>
        <div class="cartmini__checkout">
            <div class="cartmini__checkout-title mb-30">
                <h4>Subtotal:</h4>
                <span>$113.00</span>
            </div>
            <div class="cartmini__checkout-btn">
                <a href="" class="tp-btn mb-10 w-100"> Liat Keranjang</a>
                <a href="" class="tp-btn tp-btn-border w-100"> Checkout</a>
            </div>
        </div>
    </div>
</div>
<!-- cart mini area end -->
