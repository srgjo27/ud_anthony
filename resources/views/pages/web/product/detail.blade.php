<x-web-component title="Detail">
    <section class="tp-product-details-area">
        <div class="tp-product-details-top pb-115">
            <div class="container">
                <div class="row">
                    <div class="col-xl-7 col-lg-6">
                        <div class="tp-product-details-thumb-wrapper tp-tab d-sm-flex">
                            <nav>
                                <div class="nav nav-tabs flex-sm-column " id="productDetailsNavThumb" role="tablist">
                                    @foreach ($product->images as $index => $image)
                                        <button class="nav-link {{ $index == 0 ? 'active' : '' }}"
                                            id="nav-{{ $index + 1 }}-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-{{ $index + 1 }}" type="button" role="tab"
                                            aria-controls="nav-{{ $index + 1 }}"
                                            aria-selected="{{ $index == 0 ? 'true' : 'false' }}">
                                            <img src="{{ $image->image }}" alt="">
                                        </button>
                                    @endforeach
                                </div>
                            </nav>
                            <div class="tab-content m-img" id="productDetailsNavContent">
                                @foreach ($product->images as $index => $image)
                                    <div class="tab-pane fade {{ $index == 0 ? 'show active' : '' }}"
                                        id="nav-{{ $index + 1 }}" role="tabpanel"
                                        aria-labelledby="nav-{{ $index + 1 }}-tab" tabindex="0">
                                        <div class="tp-product-details-nav-main-thumb">
                                            <img src="{{ $image->image }}" alt="">
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6">
                        <div class="tp-product-details-wrapper">
                            <div class="tp-product-details-category">
                                <span>{{ $product->category->maincategory_name }}</span>
                            </div>
                            <h3 class="tp-product-details-title">{{ $product->name }}</h3>
                            <div class="tp-product-details-inventory d-flex align-items-center mb-10">
                                <div class="tp-product-details-rating-wrapper d-flex align-items-center mb-10">
                                    <div class="tp-product-details-rating">
                                        @for ($i = 0; $i < 5; $i++)
                                            @if ($i < $product->getAverageRating())
                                                <span><i class="fa-solid fa-star"></i></span>
                                            @else
                                                <span><i class="fa-thin fa-star"></i></span>
                                            @endif
                                        @endfor
                                    </div>
                                    <div class="tp-product-details-reviews">
                                        <span>({{ $product->reviews->count() }} Ulasan)</span>
                                    </div>
                                </div>
                            </div>
                            <p>{{ $product->description }}</p>
                            <div class="tp-product-details-price-wrapper mb-20">
                                <span class="tp-product-details-price new-price">Rp.
                                    {{ number_format($product->price, 0, ',', '.') }}</span>
                            </div>
                            <div class="tp-product-details-action-sm">
                            </div>
                            <div class="tp-product-details-query">
                                <div class="tp-product-details-query-item d-flex align-items-center">
                                    <span>Jenis: </span>
                                    <p>{{ $product->type }}</p>
                                </div>
                                <div class="tp-product-details-query-item d-flex align-items-center">
                                    <span>Untuk Masalah: </span>
                                    <p>{{ $product->skin_type }}</p>
                                </div>
                                <div class="tp-product-details-query-item d-flex align-items-center">
                                    <span>Sub Kategori: </span>
                                    <p>{{ $product->subcategory->subcategory_name }}</p>
                                </div>
                                <div class="tp-product-details-query-item d-flex align-items-center">
                                    <span>Merek: </span>
                                    <p>{{ $product->brand }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tp-product-details-bottom pb-140">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="tp-product-details-tab-nav tp-tab">
                            <nav>
                                <div class="nav nav-tabs justify-content-center p-relative tp-product-tab"
                                    id="navPresentationTab" role="tablist">
                                    <button class="nav-link active" id="nav-addInfo-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-addInfo" type="button" role="tab"
                                        aria-controls="nav-addInfo" aria-selected="false">Informasi Produk</button>
                                    <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-review" type="button" role="tab"
                                        aria-controls="nav-review" aria-selected="false">Rating
                                        ({{ $product->reviews->count() }})</button>
                                    <span id="productTabMarker" class="tp-product-details-tab-line"></span>
                                </div>
                            </nav>
                            <div class="tab-content" id="navPresentationTabContent">
                                <div class="tab-pane fade show active" id="nav-addInfo" role="tabpanel"
                                    aria-labelledby="nav-addInfo-tab" tabindex="0">
                                    <div class="tp-product-details-additional-info ">
                                        <div class="row justify-content-center">
                                            <div class="col-xl-10">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>Kategori</td>
                                                            <td>{{ $product->category->maincategory_name }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Sub Kategori</td>
                                                            <td>{{ $product->subcategory->subcategory_name }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nama Produk</td>
                                                            <td>{{ $product->name }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Merek</td>
                                                            <td>{{ $product->brand }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Jenis</td>
                                                            <td>{{ $product->type }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Deskripsi</td>
                                                            <td>{{ $product->description }}</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Harga</td>
                                                            <td>Rp. {{ number_format($product->price, 0, ',', '.') }}
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-review" role="tabpanel"
                                    aria-labelledby="nav-review-tab" tabindex="0">
                                    <div class="tp-product-details-review-wrapper pt-60">
                                        <div class="row">
                                            @if (session('success'))
                                                <div class="alert alert-success alert-dismissible fade show"
                                                    role="alert">
                                                    <strong>{{ session('success') }}</strong>
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                                        aria-label="Close"></button>
                                                </div>
                                            @endif
                                            <div class="col-lg-6">
                                                <div class="tp-product-details-review-statics">
                                                    <div class="tp-product-details-review-number d-inline-block mb-50">
                                                        <h3 class="tp-product-details-review-number-title">Rating
                                                            Pelanggan</h3>
                                                        <div
                                                            class="tp-product-details-review-summery d-flex align-items-center">
                                                            <div class="tp-product-details-review-summery-value">
                                                                <span>{{ number_format($product->getAverageRating(), 1) }}</span>
                                                            </div>
                                                            <div
                                                                class="tp-product-details-review-summery-rating d-flex align-items-center">
                                                                @for ($i = 0; $i < 5; $i++)
                                                                    @if ($i < $product->getAverageRating())
                                                                        <span><i class="fa-solid fa-star"></i></span>
                                                                    @else
                                                                        <span><i class="fa-thin fa-star"></i></span>
                                                                    @endif
                                                                @endfor
                                                                <p>({{ $product->reviews->count() }} Ulasan)</p>
                                                            </div>
                                                        </div>
                                                        <div class="tp-product-details-review-rating-list">
                                                            @for ($star = 5; $star >= 1; $star--)
                                                                <div
                                                                    class="tp-product-details-review-rating-item d-flex align-items-center">
                                                                    <span>{{ $star }} Bintang</span>
                                                                    <div class="tp-product-details-review-rating-bar">
                                                                        <span
                                                                            class="tp-product-details-review-rating-bar-inner"
                                                                            data-width="{{ number_format($product->getRatingPercentage($star), 2) }}%"></span>
                                                                    </div>
                                                                    <div
                                                                        class="tp-product-details-review-rating-percent">
                                                                        <span>{{ number_format($product->getRatingPercentage($star), 2) }}%</span>
                                                                    </div>
                                                                </div>
                                                            @endfor
                                                        </div>
                                                    </div>
                                                    <div class="tp-product-details-review-list pr-110">
                                                        <h3 class="tp-product-details-review-title">Rating
                                                        </h3>
                                                        @foreach ($product->reviews as $rate)
                                                            <div
                                                                class="tp-product-details-review-avater d-flex align-items-start">
                                                                <div class="tp-product-details-review-avater-thumb">
                                                                    <a href="#">
                                                                        <img src="{{ asset('web/assets/img/logo/favicon.png') }}"
                                                                            alt="">
                                                                    </a>
                                                                </div>
                                                                <div class="tp-product-details-review-avater-content">
                                                                    <div
                                                                        class="tp-product-details-review-avater-rating d-flex align-items-center">
                                                                        @for ($i = 0; $i < 5; $i++)
                                                                            @if ($i < $rate->rating)
                                                                                <span><i
                                                                                        class="fa-solid fa-star"></i></span>
                                                                            @else
                                                                                <span></span>
                                                                            @endif
                                                                        @endfor
                                                                    </div>
                                                                    <h3 class="tp-product-details-review-avater-title">
                                                                        {{ $rate->user->name }}</h3>
                                                                    <span
                                                                        class="tp-product-details-review-avater-meta">{{ $rate->created_at->format('d F, Y') }}
                                                                    </span>

                                                                    <div
                                                                        class="tp-product-details-review-avater-comment">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="tp-product-details-review-form">
                                                    <h3 class="tp-product-details-review-form-title">Ulasan Produk</h3>
                                                    <form action="{{ route('user.product.rate', $product->id) }}"
                                                        method="POST">
                                                        @csrf
                                                        <div
                                                            class="tp-product-details-review-form-rating d-flex align-items-center">
                                                            <p>Rating :</p>
                                                            <div
                                                                class="tp-product-details-review-form-rating-icon d-flex align-items-center">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <input type="number" name="rating" id="rating"
                                                                    min="1" max="5" value="0"
                                                                    class="ms-2" {{ $hasRated ? 'disabled' : '' }}>
                                                            </div>
                                                        </div>
                                                        <div class="tp-product-details-review-btn-wrapper">
                                                            @if (!$hasRated)
                                                                <button type="submit"
                                                                    class="tp-product-details-review-btn">Kirim</button>
                                                            @endif
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-web-component>
