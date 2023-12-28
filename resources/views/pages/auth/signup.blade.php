<x-auth-component title="Registrasi">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <form class="md-float-material form-material">
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
                                <input type="text" name="user-name" class="form-control" required>
                                <span class="form-bar"></span>
                                <label class="float-label">Username</label>
                            </div>
                            <div class="form-group form-primary">
                                <input type="text" name="email" class="form-control" required>
                                <span class="form-bar"></span>
                                <label class="float-label">Alamat Email</label>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group form-primary">
                                        <input type="password" name="password" class="form-control" required>
                                        <span class="form-bar"></span>
                                        <label class="float-label">Password</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group form-primary">
                                        <input type="password" name="confirm-password" class="form-control" required>
                                        <span class="form-bar"></span>
                                        <label class="float-label">Konfirmasi Password</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-t-25 text-left">
                                <div class="col-md-12">
                                    <div class="checkbox-fade fade-in-primary">
                                        <label>
                                            <input type="checkbox" value>
                                            <span class="cr"><i
                                                    class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                            <span class="text-inverse">Saya telah membaca dan menyetujui <a
                                                    href="#">Syarat &amp;
                                                    Kondisi.</a></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-t-30">
                                <div class="col-md-12">
                                    <button
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
