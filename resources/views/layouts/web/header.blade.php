<header>
    <div class="tp-header-area p-relative z-index-11">
        <div class="tp-header-top black-bg p-relative z-index-1 d-none d-md-block">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="tp-header-welcome d-flex align-items-center"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="tp-header-top-right d-flex align-items-center justify-content-end">
                            <div class="tp-header-top-menu d-flex align-items-center justify-content-end">
                                <div class="tp-header-top-menu-item tp-header-setting">
                                    <span class="tp-header-setting-toggle"
                                        id="tp-header-setting-toggle">Pengaturan</span>
                                    <ul>
                                        <li>
                                            <a href="{{ route('user.profile') }}">Profil</a>
                                        </li>
                                        <li>
                                            @if (auth()->check())
                                                <a href="{{ route('auth.user.logout') }}">Keluar</a>
                                            @else
                                                <a href="{{ route('auth.signin') }}">Masuk</a>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tp-header-main tp-header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-2 col-lg-2 col-md-4 col-6">
                        <div class="logo">
                            <a href="#">
                                <img src="{{ asset('web/assets/img/logo/favicon.png') }}"
                                    alt="{{ config('app.name') }}">
                                <span>{{ config('app.name') }}</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-7 d-none d-lg-block">
                        <div class="tp-header-search pl-70"></div>
                    </div>
                    <div class="col-xl-4 col-lg-3 col-md-8 col-6">
                        <div class="tp-header-main-right d-flex align-items-center justify-content-end">
                            <div class="tp-header-login d-none d-lg-block">
                                <a href="#" class="d-flex align-items-center">
                                    <div class="tp-header-login-icon">
                                        <span>
                                            <img src="{{ asset('web/assets/img/users/user-11.jpg') }}" width="40"
                                                height="40" class="rounded-circle" />
                                        </span>
                                    </div>
                                    <div class="tp-header-login-content d-none d-xl-block">
                                        @if (date('H') >= 12 && date('H') < 15)
                                            <span>Selamat siang, </span>
                                        @elseif (date('H') >= 15 && date('H') < 18)
                                            <span>Selamat sore, </span>
                                        @elseif (date('H') >= 18 && date('H') < 24)
                                            <span>Selamat malam, </span>
                                        @else
                                            <span>Selamat pagi, </span>
                                        @endif
                                        <h5 class="tp-header-login-title">
                                            @if (auth()->check())
                                                {{ auth()->user()->name }}
                                            @else
                                                Pengunjung
                                            @endif
                                        </h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tp-header-bottom tp-header-bottom-border d-none d-lg-block">
            <div class="container">
                <div class="tp-mega-menu-wrapper p-relative">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-lg-6">
                            <div class="main-menu menu-style-1">
                                <nav class="tp-main-menu-content">
                                    <ul>
                                        <li><a href="{{ route('auth.user.dashboard') }}">Home</a></li>
                                        <li class="has-dropdown has-mega-menu ">
                                            <a href="#">Produk</a>
                                            <div class="shop-mega-menu tp-submenu tp-mega-menu">
                                                <div class="row">
                                                    @foreach ($categories as $category)
                                                        <div class="col-lg-3">
                                                            <div class="shop-mega-menu-list">
                                                                <a href="#"
                                                                    class="shop-mega-menu-title">{{ $category->maincategory_name }}</a>
                                                                <ul>
                                                                    @foreach ($category->subcategories as $subcategory)
                                                                        <li><a
                                                                                href="{{ route('user.product', ['category' => $category->maincategory_name, 'subcategory' => $subcategory->subcategory_name]) }}">{{ $subcategory->subcategory_name }}</a>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="tp-header-contact d-flex align-items-center justify-content-end">
                                <div class="tp-header-contact-icon">
                                    <span>
                                        <svg width="21" height="20" viewBox="0 0 21 20" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M1.96977 3.24859C2.26945 2.75144 3.92158 0.946726 5.09889 1.00121C5.45111 1.03137 5.76246 1.24346 6.01544 1.49057H6.01641C6.59631 2.05874 8.26011 4.203 8.35352 4.65442C8.58411 5.76158 7.26378 6.39979 7.66756 7.5157C8.69698 10.0345 10.4707 11.8081 12.9908 12.8365C14.1058 13.2412 14.7441 11.9219 15.8513 12.1515C16.3028 12.2459 18.4482 13.9086 19.0155 14.4894V14.4894C19.2616 14.7414 19.4757 15.0537 19.5049 15.4059C19.5487 16.6463 17.6319 18.3207 17.2583 18.5347C16.3767 19.1661 15.2267 19.1544 13.8246 18.5026C9.91224 16.8749 3.65985 10.7408 2.00188 6.68096C1.3675 5.2868 1.32469 4.12906 1.96977 3.24859Z"
                                                stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" />
                                            <path d="M12.936 1.23685C16.4432 1.62622 19.2124 4.39253 19.6065 7.89874"
                                                stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" />
                                            <path d="M12.936 4.59337C14.6129 4.92021 15.9231 6.23042 16.2499 7.90726"
                                                stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </div>
                                <div class="tp-header-contact-content">
                                    <h5>Telepon:</h5>
                                    <p><a href="#">+62 8xx xxxx xxxx</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div id="header-sticky-2" class="tp-header-sticky-area">
    <div class="container">
        <div class="tp-mega-menu-wrapper p-relative">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-3 col-md-3 col-6">
                    <div class="logo">
                        <a href="#">
                            <img src="{{ asset('web/assets/img/logo/favicon.png') }}" alt="{{ config('app.name') }}">
                            <span>{{ config('app.name') }}</span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-block">
                    <div class="tp-header-sticky-menu main-menu menu-style-1">
                        <nav id="mobile-menu">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li class="has-dropdown has-mega-menu ">
                                    <a href="#">Produk</a>
                                    <div class="shop-mega-menu tp-submenu tp-mega-menu">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="shop-mega-menu-list">
                                                    <a href="#" class="shop-mega-menu-title">Daftar Produk</a>
                                                    <ul>
                                                        <li><a href="">Skincare</a></li>
                                                        <li><a href="">Haircare</a></li>
                                                        <li><a href="">Bodycare</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="#">Kontak</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
