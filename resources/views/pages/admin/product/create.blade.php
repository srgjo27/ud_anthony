<x-admin-component title="Tambah Produk">
    <!-- start: page-header -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="feather icon-home bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>Produk</h5>
                        <span>Selamat datang di admin dashboard UD Anthony</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class="breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="#"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">Produk</a></li>
                        <li class="breadcrumb-item"><a href="#!">Tambah Produk</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- end: page-header -->
    <!-- start: main-body -->
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3>Tambah Produk</h3>
                                    <span>Halaman untuk menambahkan produk baru</span>
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li class="first-opt"><i
                                                    class="feather icon-chevron-left open-card-option"></i></li>
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-refresh-cw reload-card"></i></li>
                                            <li><i class="feather icon-chevron-left open-card-option"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <form method="post" action="{{ route('admin.product.store') }}" novalidate
                                        id="productForm">
                                        @csrf
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 m-b-30">
                                                <h4 class="sub-title">Pilih Kategori Utama</h4>
                                                <select name="category_id" id="category_id"
                                                    class="form-control form-control-default">
                                                    <option value="">-- Pilih Kategori --</option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->id }}">
                                                            {{ $category->maincategory_name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-sm-12 col-xl-4 m-b-30 p-l-50">
                                                <h4 class="sub-title">Pilih Sub-Kategori</h4>
                                                <select name="subcategory_id" id="subcategory_id"
                                                    class="form-control form-control-default" disabled>
                                                    <option value="">-- Pilih Sub-Kategori --</option>
                                                    @foreach ($subcategories as $subcategory)
                                                        <option value="{{ $subcategory->id }}">
                                                            {{ $subcategory->subcategory_name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Produk</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Merek</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="brand">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Jenis</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="type">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Description</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" name="description"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Price</label>
                                            <div class="col-sm-10">
                                                <input type="number" class="form-control" name="price">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-10">
                                                <button type="submit" class="btn btn-primary m-r-5"
                                                    id="submitBtn">Kirim</button>
                                                <button type="button" class="btn btn-danger" id="resetBtn">Reset
                                                    Form</button>
                                            </div>
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
    <!-- end: main-body -->
</x-admin-component>

<!-- custom script -->
<script>
    $(document).ready(function() {
        $('#category_id').change(function() {
            var categoryId = $(this).val();

            // Disable the subcategory select box and clear it
            $('#subcategory_id').prop('disabled', true).empty();

            if (categoryId) {
                $.ajax({
                    url: '/api/subcategories/' + categoryId,
                    type: 'GET',
                    success: function(data) {
                        if (data.length > 0) {
                            $('#subcategory_id').append(
                                '<option value="">-- Pilih Sub-Kategori --</option>');
                            $.each(data, function(key, value) {
                                $('#subcategory_id').append('<option value="' +
                                    value.id + '">' + value.subcategory_name +
                                    '</option>');
                            });
                            $('#subcategory_id').prop('disabled', false);
                        } else {
                            $('#subcategory_id').append(
                                '<option value="">-- No Sub-Kategori --</option>');
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.error(textStatus, errorThrown);
                    }
                });
            } else {
                $('#subcategory_id').append('<option value="">-- Pilih Sub-Kategori --</option>');
            }
        });

        // Hide the input elements initially
        $('.form-group').hide();

        $('#subcategory_id').change(function() {
            var subcategoryId = $(this).val();

            if (subcategoryId) {
                // Show the input elements when a subcategory is selected
                $('.form-group').show();
            } else {
                // Hide the input elements when the subcategory selection is cleared
                $('.form-group').hide();
            }
        });
    });
</script>
