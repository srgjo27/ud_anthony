<x-admin-component title="Produk">
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
                        <li class="breadcrumb-item"><a href="#!">{{ ucfirst($maincategory_name) }}</a></li></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">{{ ucfirst($subcategory_name) }}</a></li></a></li>
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
                    <div class="mb-3">
                        <a href="{{ route('admin.product.create') }}" class="btn btn-primary">Tambah Produk</a>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h3>{{ ucfirst($maincategory_name) }}</h3>
                            <span>Daftar produk {{ ucfirst($subcategory_name) }}</span>
                            <div class="card-header-right">
                                <ul class="list-unstyled card-option">
                                    <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i>
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
                            @if (session('success'))
                                <div class="alert alert-success">
                                    <i class="fa fa-check-circle"></i> {{ session('success') }}
                                </div>
                            @endif
                            <div class="table-responsive dt-responsive">
                                <table id="dom-jqry" class="table table-striped table-bordered nowrap">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Produk</th>
                                            <th>Merek</th>
                                            <th>Jenis Produk</th>
                                            <th>Untuk Masalah</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($products as $product)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $product->name }}</td>
                                                <td>{{ $product->brand }}</td>
                                                <td>{{ $product->type }}</td>
                                                <td>{{ $product->skin_type }}</td>
                                                <td>
                                                    <a href="" class="btn btn-sm btn-info">Lihat</a>
                                                    <a href="{{ route('admin.product.edit', $product->id) }}"
                                                        class="btn btn-sm btn-warning">Edit</a>
                                                    <button class="btn btn-sm btn-danger btn-delete"
                                                        data-id="{{ $product->id }}"
                                                        data-action="{{ route('admin.product.destroy', $product->id) }}">Hapus</button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Produk</th>
                                            <th>Merek</th>
                                            <th>Jenis</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end: main-body -->
</x-admin-component>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
    $('.btn-delete').on('click', function(e) {
        e.preventDefault();

        var productId = $(this).data('id');
        var action = $(this).data('action');

        Swal.fire({
            title: 'Apakah Anda yakin?',
            text: "Anda tidak akan dapat mengembalikan ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, hapus!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: action,
                    type: 'POST',
                    data: {
                        "_token": "{{ csrf_token() }}",
                        "_method": "DELETE"
                    },
                    success: function(response) {
                        Swal.fire(
                            'Dihapus!',
                            response.message,
                            'success'
                        ).then((result) => {
                            location.reload();
                        });
                    },
                    error: function(response) {
                        Swal.fire(
                            'Gagal!',
                            response.responseJSON.message,
                            'error'
                        )
                    }
                });
            }
        })
    });
</script>
