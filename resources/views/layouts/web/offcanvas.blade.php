<!-- offcanvas area start -->
<div class="offcanvas__area offcanvas__radius">
    <div class="offcanvas__wrapper">
        <div class="offcanvas__close">
            <button class="offcanvas__close-btn offcanvas-close-btn">
                <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11 1L1 11" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round" />
                    <path d="M1 1L11 11" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round" />
                </svg>
            </button>
        </div>
        <div class="offcanvas__content">
            <div class="offcanvas__top mb-70 d-flex justify-content-between align-items-center">
                <div class="offcanvas__logo logo">
                    <a href="#">
                        <img src="{{ asset('web/assets/img/logo/favicon.png') }}" alt="{{ config('app.name') }}">
                        <span>{{ config('app.name') }}</span>
                    </a>
                </div>
            </div>
            <div class="tp-main-menu-mobile fix d-lg-none mb-40"></div>
        </div>
        <div class="offcanvas__bottom">
            <div class="offcanvas__footer d-flex align-items-center justify-content-between">
                @if (auth()->check())
                    <a href="{{ route('auth.user.logout') }}" class="btn btn-danger">Keluar</a>
                @else
                    <a href="{{ route('auth.signin') }}" class="btn btn-primary">Masuk</a>
                @endif
            </div>
        </div>
    </div>
</div>
<div class="body-overlay"></div>
<!-- offcanvas area end -->
