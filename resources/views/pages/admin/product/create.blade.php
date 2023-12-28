<x-admin-component title="Tambah Produku">
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
                    <ul class=" breadcrumb breadcrumb-title">
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
                                                    class="feather icon-chevron-left open-card-option"></i>
                                            </li>
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-refresh-cw reload-card"></i></li>
                                            <li><i class="feather icon-chevron-left open-card-option"></i>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div class="row">
                                        <div class="col-sm-12 col-xl-4 m-b-30">
                                            <h4 class="sub-title">Pilih Kategori Utama</h4>
                                            <select name="main_category" id="main_category"
                                                class="form-control form-control-default">
                                                <option value="">-- Pilih Kategori --</option>
                                                <option value="opt1">Tipe 1</option>
                                                <option value="opt2">Tipe 2</option>
                                                <option value="opt3">Tipe 3</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-12 col-xl-4 m-b-30 p-l-50">
                                            <h4 class="sub-title">Pilih Sub-Kategori</h4>
                                            <select name="sub_category" id="sub_category"
                                                class="form-control form-control-default" disabled>
                                                <option value="">-- Pilih Sub-Kategori --</option>
                                                <option value="subopt1">Tipe 1</option>
                                                <option value="subopt2">Tipe 2</option>
                                                <option value="subopt3">Tipe 3</option>
                                            </select>
                                        </div>
                                    </div>
                                    <form method="post" action="#" novalidate id="productForm">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Produk</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="product_name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Merek</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="product_brand">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Jenis</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="product_type">
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
        // Function to reset the form
        function resetForm() {
            // Using the reset() method to clear the form
            $('#productForm')[0].reset();
        }

        // Function to disable Sub-Kategori if Main Kategori is not selected
        function disableSubCategory() {
            var mainCategory = $('#main_category').val();
            var subCategorySelect = $('#sub_category');

            // Check if Main Kategori is selected
            if (mainCategory === "") {
                // Disable Sub-Kategori if Main Kategori is not selected
                subCategorySelect.prop('disabled', true);
            } else {
                // Enable Sub-Kategori if Main Kategori is selected
                subCategorySelect.prop('disabled', false);
            }
        }

        // Function to hide the form
        function hideForm() {
            $('#productForm').hide();
        }

        // Function to show the form
        function showForm() {
            $('#productForm').show();
        }

        // Function to hide or show the form based on selected categories
        function hideShowForm() {
            var mainCategory = $('#main_category').val();
            var subCategory = $('#sub_category').val();

            // Check if either Main Kategori or Sub-Kategori is not empty
            if (mainCategory !== "" || subCategory !== "") {
                showForm();
            } else {
                hideForm();
            }
        }

        // Call hideShowForm on document ready
        hideShowForm();

        // Handling click on the Reset button
        $('#resetBtn').on('click', function() {
            // Implement the logic for data reset here
            // (You can include AJAX or reset actions as needed)
            resetForm();
            hideForm();
        });

        // Handling change in the Main Category dropdown
        $('#main_category').on('change', function() {
            // Enable or disable Sub-Kategori based on the selected Main Category
            disableSubCategory();
            // Hide or show the form based on the selected categories
            hideShowForm();
        });

        // Handling change in the Sub Category dropdown
        $('#sub_category').on('change', function() {
            // Hide or show the form based on the selected categories
            hideShowForm();
        });
    });
</script>
