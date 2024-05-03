<x-web-component title="Produk">
    <section class="breadcrumb__area include-bg pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="breadcrumb__content p-relative z-index-1">
                        <h3 class="breadcrumb__title">{{ ucfirst($maincategory_name) }}</h3>
                        <div class="breadcrumb__list">
                            <span><a href="{{ route('auth.user.dashboard') }}">Home</a></span>
                            <span>{{ ucfirst($subcategory_name) }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="tp-shop-area pb-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="tp-shop-main-wrapper">
                        <div class="tp-shop-top mb-45">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="tp-shop-top-left d-flex align-items-center ">
                                        <div class="tp-shop-top-tab tp-tab">
                                            <ul class="nav nav-tabs" id="productTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="grid-tab" data-bs-toggle="tab"
                                                        data-bs-target="#grid-tab-pane" type="button" role="tab"
                                                        aria-controls="grid-tab-pane" aria-selected="true">
                                                        <svg width="18" height="18" viewBox="0 0 18 18"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M16.3327 6.01341V2.98675C16.3327 2.04675 15.906 1.66675 14.846 1.66675H12.1527C11.0927 1.66675 10.666 2.04675 10.666 2.98675V6.00675C10.666 6.95341 11.0927 7.32675 12.1527 7.32675H14.846C15.906 7.33341 16.3327 6.95341 16.3327 6.01341Z"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                            <path
                                                                d="M16.3327 15.18V12.4867C16.3327 11.4267 15.906 11 14.846 11H12.1527C11.0927 11 10.666 11.4267 10.666 12.4867V15.18C10.666 16.24 11.0927 16.6667 12.1527 16.6667H14.846C15.906 16.6667 16.3327 16.24 16.3327 15.18Z"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                            <path
                                                                d="M7.33268 6.01341V2.98675C7.33268 2.04675 6.90602 1.66675 5.84602 1.66675H3.15268C2.09268 1.66675 1.66602 2.04675 1.66602 2.98675V6.00675C1.66602 6.95341 2.09268 7.32675 3.15268 7.32675H5.84602C6.90602 7.33341 7.33268 6.95341 7.33268 6.01341Z"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                            <path
                                                                d="M7.33268 15.18V12.4867C7.33268 11.4267 6.90602 11 5.84602 11H3.15268C2.09268 11 1.66602 11.4267 1.66602 12.4867V15.18C1.66602 16.24 2.09268 16.6667 3.15268 16.6667H5.84602C6.90602 16.6667 7.33268 16.24 7.33268 15.18Z"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="list-tab" data-bs-toggle="tab"
                                                        data-bs-target="#list-tab-pane" type="button" role="tab"
                                                        aria-controls="list-tab-pane" aria-selected="false">
                                                        <svg width="16" height="15" viewBox="0 0 16 15"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M15 7.11108H1" stroke="currentColor"
                                                                stroke-width="2" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                            <path d="M15 1H1" stroke="currentColor" stroke-width="2"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                            <path d="M15 13.2222H1" stroke="currentColor"
                                                                stroke-width="2" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                        </svg>
                                                    </button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tp-shop-top-result">
                                            <p>Tampilkan {{ $products->count() }} hasil</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tp-shop-items-wrapper tp-shop-item-primary">
                            <div class="tab-content" id="productTabContent">
                                <div class="tab-pane fade show active" id="grid-tab-pane" role="tabpanel"
                                    aria-labelledby="grid-tab" tabindex="0">
                                    <div class="row">
                                        @foreach ($products as $product)
                                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                                <div class="tp-product-item-2 mb-40">
                                                    <div class="tp-product-thumb-2 p-relative z-index-1 fix w-img">
                                                        <a href="{{ route('user.product.show', $product->id) }}">
                                                            @if ($product->images->first())
                                                                <img src="{{ asset($product->images->first()->image) }}"
                                                                    alt="">
                                                            @else
                                                                <img
                                                                    src="{{ asset('web/assets/img/logo/favicon.png') }}">
                                                            @endif
                                                        </a>
                                                    </div>
                                                    <div class="tp-product-content-2 pt-15">
                                                        <div class="tp-product-tag-2">
                                                            <a href="#">{{ $product->brand }}</a>
                                                        </div>
                                                        <h3 class="tp-product-title-2">
                                                            <a href="">{{ $product->name }}</a>
                                                        </h3>
                                                        <div class="tp-product-rating-icon tp-product-rating-icon-2">
                                                            @for ($i = 0; $i < 5; $i++)
                                                                @if ($i < $product->getAverageRating())
                                                                    <span><i class="fa-solid fa-star"></i></span>
                                                                @else
                                                                    <span><i class="fa-thin fa-star"></i></span>
                                                                @endif
                                                            @endfor
                                                        </div>
                                                        <div class="tp-product-price-wrapper-2">
                                                            <span class="tp-product-price-2 new-price">Rp.
                                                                {{ number_format($product->price, 0, ',', '.') }}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="list-tab-pane" role="tabpanel"
                                    aria-labelledby="list-tab" tabindex="0">
                                    <div class="tp-shop-list-wrapper tp-shop-item-primary mb-70">
                                        <div class="row justify-content-center">
                                            @foreach ($products as $product)
                                                <div class="col-xl-10">
                                                    <div class="tp-product-list-item d-md-flex">
                                                        <div class="tp-product-list-thumb p-relative fix">
                                                            <a href="{{ route('user.product.show', $product->id) }}">
                                                                @if ($product->images->first())
                                                                    <img src="{{ asset($product->images->first()->image) }}"
                                                                        alt="" style="width: 300px;">
                                                                @else
                                                                    <img src="" alt="">
                                                                @endif
                                                            </a>
                                                        </div>
                                                        <div class="tp-product-list-content">
                                                            <div class="tp-product-content-2 pt-15">
                                                                <div class="tp-product-tag-2">
                                                                    <a href="#">{{ $product->brand }}</a>
                                                                </div>
                                                                <h3 class="tp-product-title-2">
                                                                    <a href="#">{{ $product->name }}</a>
                                                                </h3>
                                                                <div
                                                                    class="tp-product-rating-icon tp-product-rating-icon-2">
                                                                    @for ($i = 0; $i < 5; $i++)
                                                                        @if ($i < $product->getAverageRating())
                                                                            <span><i
                                                                                    class="fa-solid fa-star"></i></span>
                                                                        @else
                                                                            <span><i
                                                                                    class="fa-thin fa-star"></i></span>
                                                                        @endif
                                                                    @endfor
                                                                </div>
                                                                <div class="tp-product-price-wrapper-2">
                                                                    <span class="tp-product-price-2 new-price">Rp.
                                                                        {{ number_format($product->price, 0, ',', '.') }}</span>
                                                                </div>
                                                                <p>{{ $product->description }}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tp-shop-pagination mt-20">
                            <div class="tp-pagination">
                                <nav>
                                    <ul class="pagination">
                                        <!-- Previous Page Link -->
                                        @if ($products->onFirstPage())
                                            <li class="disabled"><span>&laquo;</span></li>
                                        @else
                                            <li><a href="{{ $products->previousPageUrl() }}"
                                                    rel="prev">&laquo;</a></li>
                                        @endif

                                        <!-- Pagination Elements -->
                                        @for ($i = 1; $i <= $products->lastPage(); $i++)
                                            @if ($i == $products->currentPage())
                                                <li class="active"><span
                                                        style="background-color: #0989FF;">{{ $i }}</span>
                                                </li>
                                            @else
                                                <li><a href="{{ $products->url($i) }}">{{ $i }}</a></li>
                                            @endif
                                        @endfor

                                        <!-- Next Page Link -->
                                        @if ($products->hasMorePages())
                                            <li><a href="{{ $products->nextPageUrl() }}" rel="next">&raquo;</a>
                                            </li>
                                        @else
                                            <li class="disabled"><span>&raquo;</span></li>
                                        @endif
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-web-component>
