<x-auth-component title="Login">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="md-float-material form-material">
                    <div class="text-center">
                        <img src="{{ asset('admin/files/assets/images/logo.png') }}" alt="logo.png">
                    </div>
                    <div class="auth-box card">
                        <form action="{{ route('do_login') }}" method="post" novalidate>
                            @csrf
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">MASUK</h3>
                                    </div>
                                </div>
                                <div class="row m-b-20 justify-content-center">
                                    <div class="col-md-6">
                                        <button class="btn btn-google-plus m-b-20 btn-block"><i
                                                class="icofont icofont-social-google-plus"></i> google</button>
                                    </div>
                                </div>
                                @if (session('success'))
                                    <div class="alert alert-success">
                                        <i class="fa fa-check-circle"></i> {{ session('success') }}
                                    </div>
                                @endif
                                @if ($errors->has('login_error'))
                                    <div class="alert alert-danger">
                                        <i class="fa fa-exclamation-circle"></i> {{ $errors->first('login_error') }}
                                    </div>
                                @endif
                                <p class="text-muted text-center p-b-5">Masuk dengan akun reguler Anda</p>
                                <div class="form-group form-primary">
                                    <input type="text" name="username_or_email"
                                        class="form-control @error('username_or_email') is-invalid @enderror">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Username/Email</label>
                                    @error('username_or_email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group form-primary">
                                    <input type="password" name="password"
                                        class="form-control @error('username_or_email') is-invalid @enderror">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Password</label>
                                    @error('password')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit"
                                            class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">MASUK</button>
                                    </div>
                                </div>
                                <p class="text-inverse text-left">Tidak punya akun? <a
                                        href="{{ route('auth.signup') }}"><b>Registrasi disini</b></a> Gratis!</p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-auth-component>
