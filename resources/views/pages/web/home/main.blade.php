<x-web-component title="Home">
    <section class="tp-product-area pb-55">
        <div class="container">
            <div class="row align-items-end">
                <div class="col-xl-5 col-lg-6 col-md-5">
                    <div class="tp-section-title-wrapper mb-40">
                        <h3 class="tp-section-title">Rekomendasi Produk
                            <svg width="114" height="35" viewBox="0 0 114 35" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M112 23.275C1.84952 -10.6834 -7.36586 1.48086 7.50443 32.9053"
                                    stroke="currentColor" stroke-width="4" stroke-miterlimit="3.8637"
                                    stroke-linecap="round" />
                            </svg>
                        </h3>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-6 col-md-7">
                    <div class="tp-product-tab tp-product-tab-border mb-45 tp-tab d-flex justify-content-md-end">
                        <ul class="nav nav-tabs justify-content-sm-end" id="productTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="all-tab" data-bs-toggle="tab"
                                    data-bs-target="#all-tab-pane" type="button" role="tab"
                                    aria-controls="all-tab-pane" aria-selected="true">Semua
                                    <span class="tp-product-tab-line">
                                        <svg width="52" height="13" viewBox="0 0 52 13" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M1 8.97127C11.6061 -5.48521 33 3.99996 51 11.4635"
                                                stroke="currentColor" stroke-width="2" stroke-miterlimit="3.8637"
                                                stroke-linecap="round" />
                                        </svg>
                                    </span>
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="topsell-tab" data-bs-toggle="tab"
                                    data-bs-target="#topsell-tab-pane" type="button" role="tab"
                                    aria-controls="topsell-tab-pane" aria-selected="false">Terlaris
                                    <span class="tp-product-tab-line">
                                        <svg width="52" height="13" viewBox="0 0 52 13" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M1 8.97127C11.6061 -5.48521 33 3.99996 51 11.4635"
                                                stroke="currentColor" stroke-width="2" stroke-miterlimit="3.8637"
                                                stroke-linecap="round" />
                                        </svg>
                                    </span>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="tp-product-tab-content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="all-tab-pane" role="tabpanel"
                                aria-labelledby="all-tab" tabindex="0">
                                <div class="row">
                                    @foreach ($products as $item)
                                        <div class="col-xl-3 col-lg-3 col-sm-6">
                                            <div class="tp-product-item p-relative transition-3 mb-25">
                                                <div class="tp-product-thumb p-relative fix m-img">
                                                    <a href="{{ route('user.product.show', $item->id) }}">
                                                        @if ($item->images->first())
                                                            <img src="{{ asset($item->images->first()->image) }}"
                                                                alt="" height="270">
                                                        @else
                                                            <img src="{{ asset('web/assets/img/logo/favicon.png') }}"
                                                                alt="" height="270">
                                                        @endif
                                                    </a>
                                                </div>
                                                <div class="tp-product-content">
                                                    <div class="tp-product-category">
                                                        <a href="#">{{ $item->category->maincategory_name }}</a>
                                                    </div>
                                                    <h3 class="tp-product-title">
                                                        <a href="#">
                                                            {{ $item->name }}
                                                        </a>
                                                    </h3>
                                                    <div class="tp-product-rating d-flex align-items-center">
                                                        <div class="tp-product-rating-icon">
                                                            @for ($i = 0; $i < 5; $i++)
                                                                @if ($i < $item->getAverageRating())
                                                                    <span><i class="fa-solid fa-star"></i></span>
                                                                @else
                                                                    <span><i class="fa-thin fa-star"></i></span>
                                                                @endif
                                                            @endfor
                                                        </div>
                                                        <div class="tp-product-rating-text">
                                                            <span>({{ $item->reviews->count() }} Ulasan)</span>
                                                        </div>
                                                    </div>
                                                    <div class="tp-product-price-wrapper">
                                                        <span class="tp-product-price new-price">Rp.
                                                            {{ number_format($item->price, 0, ',', '.') }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                {{-- <div class="tp-shop-pagination mt-20">
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
                                                        <li><a href="{{ $products->url($i) }}">{{ $i }}</a>
                                                        </li>
                                                    @endif
                                                @endfor

                                                <!-- Next Page Link -->
                                                @if ($products->hasMorePages())
                                                    <li><a href="{{ $products->nextPageUrl() }}"
                                                            rel="next">&raquo;</a>
                                                    </li>
                                                @else
                                                    <li class="disabled"><span>&raquo;</span></li>
                                                @endif
                                            </ul>
                                        </nav>
                                    </div>
                                </div> --}}
                            </div>
                            <div class="tab-pane fade show active" id="topsell-tab-pane" role="tabpanel"
                                aria-labelledby="topsell-tab" tabindex="0">
                                <!-- TODO -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-web-component>
