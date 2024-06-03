<x-auth-component title="Form Personal Case">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <form class="md-float-material form-material" action="{{ route('do_personal_case', $user->id) }}"
                    method="post" novalidate>
                    @csrf
                    @method('post')
                    <div class="text-center">
                        <img src="{{ asset('admin/files/assets/images/logo.png') }}" alt="logo.png">
                    </div>
                    <div class="auth-box card">
                        <div class="card-block">
                            <div class="row m-b-20">
                                <div class="col-md-12">
                                    <h3 class="text-center txt-primary">FORM DATA DIRI</h3>
                                </div>
                            </div>
                            <p class="text-muted text-center p-b-5">Silahkan isi data anda untuk menyelesaikan proses
                                registrasi!</p>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Jenis Kelamin
                                    :</label>
                                <select name="gender" class="form-control" id="">
                                    <option value="">Pilih Jenis Kelamin</option>
                                    <option value="Laki-laki">
                                        Laki-laki</option>
                                    <option value="Perempuan">
                                        Perempuan</option>
                                </select>
                                @error('gender')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold" style="font-size: 14px; color: rgb(222, 222, 222);">Usia
                                    :</label>
                                <select name="age" class="form-control" id="">
                                    <option value="">Pilih Rentang Usia</option>
                                    <option value="18-25">18-25 tahun
                                    </option>
                                    <option value="26-35">26-35 tahun
                                    </option>
                                    <option value="36-45">36-45 tahun
                                    </option>
                                    <option value="45+">45 tahun keatas
                                    </option>
                                </select>
                                @error('age')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Jenis Kulit Wajah :</label>
                                <select name="skin_type_face" class="form-control" id="">
                                    <option value="">Pilih Jenis Kulit Wajah</option>
                                    <option value="normal">Normal</option>
                                    <option value="kering">Kering</option>
                                    <option value="berminyak">Berminyak</option>
                                    <option value="sensitif">Sensitif</option>
                                    <option value="kombinasi">Kombinasi</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Jenis Masalah Rambut :</label>
                                <select name="hair_issue" class="form-control" id="">
                                    <option value="">Pilih Jenis Masalah Rambut</option>
                                    <option value="normal">Normal</option>
                                    <option value="ketombe">Ketombe</option>
                                    <option value="kering">Kering</option>
                                    <option value="berminyak">Berminyak</option>
                                    <option value="rontok">Rontok</option>
                                    <option value="bercabang">Bercabang</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Jenis Kulit Badan :</label>
                                <select name="skin_type_body" class="form-control" id="">
                                    <option value="">Pilih Jenis Kulit Badan</option>
                                    <option value="normal">Normal</option>
                                    <option value="kering">Kering</option>
                                    <option value="berminyak">Berminyak</option>
                                    <option value="kombinasi">Kombinasi</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Riwayat Alergi atau Reaksi Kulit
                                    :</label><br>
                                <input type="checkbox" name="allergy_history[]" value="pewangi"> Pewangi<br>
                                <input type="checkbox" name="allergy_history[]" value="pewarna"> Pewarna<br>
                                <input type="checkbox" name="allergy_history[]" value="kandungan_kimia"> Kandungan
                                Kimia<br>
                                <input type="checkbox" name="allergy_history[]" value="tidak_ada_alergi"> Tidak Ada
                                Alergi<br>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Produk atau Bahan yang Disukai
                                    :</label><br>
                                <input type="checkbox" name="preferred_products[]" value="bahan_alami"> Bahan Alami<br>
                                <input type="checkbox" name="preferred_products[]" value="vegan"> Vegan<br>
                                <input type="checkbox" name="preferred_products[]" value="cruelty_free">
                                Cruelty-Free<br>
                                <input type="checkbox" name="preferred_products[]" value="pewangi"> Pewangi<br>
                                <input type="checkbox" name="preferred_products[]" value="paraben"> Paraben<br>
                                <input type="checkbox" name="preferred_products[]" value="sls"> SLS (Sodium Lauryl
                                Sulfate)<br>
                                <input type="checkbox" name="preferred_products[]" value="minyak_mineral"> Minyak
                                Mineral<br>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Produk atau Bahan yang
                                    Dihindari :</label><br>
                                <input type="checkbox" name="avoided_products[]" value="bahan_alami"> Bahan Alami<br>
                                <input type="checkbox" name="avoided_products[]" value="vegan"> Vegan<br>
                                <input type="checkbox" name="avoided_products[]" value="cruelty_free">
                                Cruelty-Free<br>
                                <input type="checkbox" name="avoided_products[]" value="pewangi"> Pewangi<br>
                                <input type="checkbox" name="avoided_products[]" value="paraben"> Paraben<br>
                                <input type="checkbox" name="avoided_products[]" value="sls"> SLS (Sodium Lauryl
                                Sulfate)<br>
                                <input type="checkbox" name="avoided_products[]" value="minyak_mineral"> Minyak
                                Mineral<br>
                            </div>
                            <div class="mb-3">
                                <label class="font-weight-bold"
                                    style="font-size: 14px; color: rgb(222, 222, 222);">Kebutuhan Spesifik
                                    :</label><br>
                                <input type="checkbox" name="specific_needs[]" value="anti_aging"> Anti-aging<br>
                                <input type="checkbox" name="specific_needs[]" value="meratakan_warna_kulit">
                                Meratakan Warna Kulit<br>
                                <input type="checkbox" name="specific_needs[]" value="menghilangkan_jerawat">
                                Menghilangkan Jerawat<br>
                                <input type="checkbox" name="specific_needs[]" value="menghidrasi"> Menghidrasi<br>
                                <input type="checkbox" name="specific_needs[]" value="perlindungan_matahari">
                                Perlindungan Matahari (SPF)<br>
                                <input type="checkbox" name="specific_needs[]" value="menghilangkan_noda_hitam">
                                Menghilangkan Noda Hitam<br>
                            </div>
                            <div class="row m-t-30">
                                <div class="col-md-6">
                                    <button type="reset"
                                        class="btn btn-danger btn-md btn-block waves-effect text-center m-b-20">ULANG</button>
                                </div>
                                <div class="col-md-6">
                                    <button type="submit"
                                        class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">KIRIM</button>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-10">
                                    <p class="text-inverse text-left m-b-0">Terimakasih 🙏</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-auth-component>

<script>
    window.addEventListener('DOMContentLoaded', function() {
        alert('Semua data diri Anda akan aman dan digunakan untuk keperluan pengerjaan TA.');
    });
</script>
