<x-auth-component title="Registrasi">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <form class="md-float-material form-material" action="{{ route('do_register') }}" method="post"
                    novalidate>
                    @csrf
                    <div class="text-center">
                        <img src="{{ asset('admin/files/assets/images/logo.png') }}" alt="logo.png">
                    </div>
                    <div class="auth-box card">
                        <div class="card-block">
                            <div class="row m-b-20">
                                <div class="col-md-12">
                                    <h3 class="text-center txt-primary">REGISTRASI</h3>
                                </div>
                            </div>
                            <div class="row m-b-20 justify-content-center">
                                <div class="col-md-6">
                                    <button class="btn btn-google-plus m-b-20 btn-block"><i
                                            class="icofont icofont-social-google-plus"></i>
                                        google</button>
                                </div>
                            </div>
                            <p class="text-muted text-center p-b-5">Register dengan akun reguler Anda</p>
                            <div class="form-group form-primary">
                                <input type="text" name="name"
                                    class="form-control @error('name') is-invalid @enderror">
                                <span class="form-bar"></span>
                                <label class="float-label">Nama</label>
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group form-primary">
                                <input type="text" name="username"
                                    class="form-control @error('username') is-invalid @enderror">
                                <span class="form-bar"></span>
                                <label class="float-label">Username</label>
                                @error('username')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group form-primary">
                                <input type="text" name="email"
                                    class="form-control @error('email') is-invalid @enderror">
                                <span class="form-bar"></span>
                                <label class="float-label">Alamat Email</label>
                                @error('email')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group form-primary">
                                <input type="password" name="password"
                                    class="form-control @error('password') is-invalid @enderror">
                                <span class="form-bar"></span>
                                <label class="float-label">Password</label>
                                @error('password')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="row m-t-30">
                                <div class="col-md-12">
                                    <button type="submit"
                                        class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">DAFTAR</button>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-10">
                                    <p class="text-inverse text-left m-b-0">Terimakasih 🙏,</p>
                                    <p class="text-inverse text-left"><a
                                            href="{{ route('auth.signin') }}"><b>Kembali</b></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-auth-component>
