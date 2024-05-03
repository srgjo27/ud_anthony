<x-web-component title="Profil">
    <section class="profile__area pt-120 pb-120">
        <div class="container">
            <div class="profile__inner p-relative">
                <div class="profile__shape">
                    <img class="profile__shape-1" src="{{ asset('web/assets/img/login/laptop.png') }}" alt="">
                    <img class="profile__shape-2" src="{{ asset('web/assets/img/login/man.png') }}" alt="">
                    <img class="profile__shape-3" src="{{ asset('web/assets/img/login/shape-1.png') }}" alt="">
                    <img class="profile__shape-4" src="{{ asset('web/assets/img/login/shape-2.png') }}" alt="">
                    <img class="profile__shape-5" src="{{ asset('web/assets/img/login/shape-3.png') }}" alt="">
                    <img class="profile__shape-6" src="{{ asset('web/assets/img/login/shape-4.png') }}" alt="">
                </div>
                <div class="row">
                    <div class="col-xxl-4 col-lg-4">
                        <div class="profile__tab mr-40">
                            <nav>
                                <div class="nav nav-tabs tp-tab-menu flex-column" id="profile-tab" role="tablist">
                                    <button class="nav-link active" id="nav-profile-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-profile" type="button" role="tab"
                                        aria-controls="nav-profile" aria-selected="false"><span><i
                                                class="fa-regular fa-user-pen"></i></span>Profil</button>
                                    <button class="nav-link" id="nav-information-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-information" type="button" role="tab"
                                        aria-controls="nav-information" aria-selected="false"><span><i
                                                class="fa-regular fa-circle-info"></i></span> Informasi</button>
                                    <span id="marker-vertical" class="tp-tab-line d-none d-sm-inline-block"></span>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xxl-8 col-lg-8">
                        <div class="profile__tab-content">
                            <div class="tab-content" id="profile-tabContent">
                                <div class="tab-pane fade show active" id="nav-profile" role="tabpanel"
                                    aria-labelledby="nav-profile-tab">
                                    <div class="profile__main">
                                        <div class="profile__main-top pb-80">
                                            <div class="row align-items-center">
                                                <div class="col-md-6">
                                                    <div
                                                        class="profile__main-inner d-flex flex-wrap align-items-center">
                                                        <div class="profile__main-thumb">
                                                            <img src="{{ asset('web/assets/img/logo/favicon.png') }}"
                                                                alt="">
                                                            <div class="profile__main-thumb-edit">
                                                                <input id="profile-thumb-input"
                                                                    class="profile-img-popup" type="file">
                                                                <label for="profile-thumb-input"><i
                                                                        class="fa-light fa-camera"></i></label>
                                                            </div>
                                                        </div>
                                                        <div class="profile__main-content">
                                                            <h4 class="profile__main-title">Hallo👋,
                                                                {{ Auth::user()->name }}</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="profile__main-logout text-sm-end">
                                                        <a href="{{ route('auth.user.logout') }}"
                                                            class="tp-logout-btn">Keluar</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-information" role="tabpanel"
                                    aria-labelledby="nav-information-tab">
                                    <div class="profile__info">
                                        <h3 class="profile__info-title">Informasi Pribadi</h3>
                                        <div class="profile__info-content">
                                            <form action="{{ route('user.profile.update', Auth::user()->id) }}"
                                                method="post">
                                                @csrf
                                                <div class="row">
                                                    @if (session('success'))
                                                        <div class="alert alert-success alert-dismissible fade show"
                                                            role="alert">
                                                            <strong>{{ session('success') }}</strong>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="alert" aria-label="Close"></button>
                                                        </div>
                                                    @endif
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <input type="text" placeholder="Masukkan nama anda"
                                                                    value="{{ Auth::user()->name }}">
                                                                <span>
                                                                    <svg width="17" height="19"
                                                                        viewBox="0 0 17 19" fill="none"
                                                                        xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M9 9C11.2091 9 13 7.20914 13 5C13 2.79086 11.2091 1 9 1C6.79086 1 5 2.79086 5 5C5 7.20914 6.79086 9 9 9Z"
                                                                            stroke="currentColor" stroke-width="1.5"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round" />
                                                                        <path
                                                                            d="M15.5 17.6C15.5 14.504 12.3626 12 8.5 12C4.63737 12 1.5 14.504 1.5 17.6"
                                                                            stroke="currentColor" stroke-width="1.5"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round" />
                                                                    </svg>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <input type="email"
                                                                    placeholder="Masukkan email anda"
                                                                    value="{{ Auth::user()->email }}">
                                                                <span>
                                                                    <svg width="18" height="16"
                                                                        viewBox="0 0 18 16" fill="none"
                                                                        xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M13 14.6H5C2.6 14.6 1 13.4 1 10.6V5C1 2.2 2.6 1 5 1H13C15.4 1 17 2.2 17 5V10.6C17 13.4 15.4 14.6 13 14.6Z"
                                                                            stroke="currentColor" stroke-width="1.5"
                                                                            stroke-miterlimit="10"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round" />
                                                                        <path
                                                                            d="M13 5.3999L10.496 7.3999C9.672 8.0559 8.32 8.0559 7.496 7.3999L5 5.3999"
                                                                            stroke="currentColor" stroke-width="1.5"
                                                                            stroke-miterlimit="10"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round" />
                                                                    </svg>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <select name="gender" id="gender">
                                                                    <option value="Laki-laki"
                                                                        {{ $profile->gender === 'Laki-laki' ? 'selected' : '' }}>
                                                                        Laki-laki</option>
                                                                    <option value="Perempuan"
                                                                        {{ $profile->gender === 'Perempuan' ? 'selected' : '' }}>
                                                                        Perempuan</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <select name="age" id="age">
                                                                    <option value="18-25"
                                                                        {{ $profile->age === '18-25' ? 'selected' : '' }}>
                                                                        18-25 tahun</option>
                                                                    <option value="26-35"
                                                                        {{ $profile->age === '26-35' ? 'selected' : '' }}>
                                                                        26-35 tahun</option>
                                                                    <option value="36-45"
                                                                        {{ $profile->age === '35-44' ? 'selected' : '' }}>
                                                                        36-45 tahun</option>
                                                                    <option value="45+"
                                                                        {{ $profile->age === '45+' ? 'selected' : '' }}>
                                                                        45 tahun keatas</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <select name="skin_type_face" id="skin_type_face">
                                                                    <option value="">Pilih Jenis Kulit Wajah
                                                                    </option>
                                                                    <option value="kering"
                                                                        {{ $profile->skin_type_face === 'kering' ? 'selected' : '' }}>
                                                                        Kering</option>
                                                                    <option value="berminyak"
                                                                        {{ $profile->skin_type_face === 'berminyak' ? 'selected' : '' }}>
                                                                        Berminyak</option>
                                                                    <option value="normal"
                                                                        {{ $profile->skin_type_face === 'normal' ? 'selected' : '' }}>
                                                                        Normal</option>
                                                                    <option value="kombinasi"
                                                                        {{ $profile->skin_type_face === 'kombinasi' ? 'selected' : '' }}>
                                                                        Kombinasi</option>
                                                                    <option value="sensitif"
                                                                        {{ $profile->skin_type_face === 'sensitif' ? 'selected' : '' }}>
                                                                        Sensitif</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <select name="hair_issue" id="hair_issue">
                                                                    <option value="">Pilih Jenis Masalah Rambut
                                                                    </option>
                                                                    <option value="kering"
                                                                        {{ $profile->hair_issue === 'kering' ? 'selected' : '' }}>
                                                                        Kering</option>
                                                                    <option value="berminyak"
                                                                        {{ $profile->hair_issue === 'berminyak' ? 'selected' : '' }}>
                                                                        Berminyak</option>
                                                                    <option value="rontok"
                                                                        {{ $profile->hair_issue === 'rontok' ? 'selected' : '' }}>
                                                                        Rontok</option>
                                                                    <option value="ketombe"
                                                                        {{ $profile->hair_issue === 'ketombe' ? 'selected' : '' }}>
                                                                        Ketombe</option>
                                                                    <option value="normal"
                                                                        {{ $profile->hair_issue === 'normal' ? 'selected' : '' }}>
                                                                        Normal</option>
                                                                    <option value="bercabang"
                                                                        {{ $profile->hair_issue === 'bercabang' ? 'selected' : '' }}>
                                                                        Bercabang</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="profile__input-box">
                                                            <div class="profile__input">
                                                                <select name="skin_type_body" id="skin_type_body">
                                                                    <option value="">Pilih Jenis Kulit Badan
                                                                    </option>
                                                                    <option value="kering"
                                                                        {{ $profile->skin_type_body === 'kering' ? 'selected' : '' }}>
                                                                        Kering</option>
                                                                    <option value="berminyak"
                                                                        {{ $profile->skin_type_body === 'berminyak' ? 'selected' : '' }}>
                                                                        Berminyak</option>
                                                                    <option value="normal"
                                                                        {{ $profile->skin_type_body === 'normal' ? 'selected' : '' }}>
                                                                        Normal</option>
                                                                    <option value="kombinasi"
                                                                        {{ $profile->skin_type_body === 'kombinasi' ? 'selected' : '' }}>
                                                                        Kombinasi</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12 pb-3">
                                                        <h6>Riwayat Alergi Kulit
                                                            :</h6>
                                                        <input type="checkbox" name="allergy_history[]"
                                                            value="pewangi" id="pewangi"
                                                            {{ in_array('pewangi', json_decode($profile->allergy_history)) ? 'checked' : '' }}>
                                                        <label for="pewangi">Pewangi</label><br>
                                                        <input type="checkbox" name="allergy_history[]"
                                                            value="pewarna" id="pewarna"
                                                            {{ in_array('pewarna', json_decode($profile->allergy_history)) ? 'checked' : '' }}>
                                                        <label for="pewarna">Pewarna</label><br>
                                                        <input type="checkbox" name="allergy_history[]"
                                                            value="kandungan_kimia" id="kandungan_kimia"
                                                            {{ in_array('kandungan_kimia', json_decode($profile->allergy_history)) ? 'checked' : '' }}>
                                                        <label for="kandungan_kimia">Kandungan Kimia</label><br>
                                                        <input type="checkbox" name="allergy_history[]"
                                                            value="tidak_ada_alergi" id="tidak_ada_alergi"
                                                            {{ in_array('tidak_ada_alergi', json_decode($profile->allergy_history)) ? 'checked' : '' }}>
                                                        <label for="tidak_ada_alergi">Tidak Ada Alergi</label><br>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12 pb-3">
                                                        <h6>Produk atau Bahan yang Disukai
                                                            :</h6>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="bahan_alami" id="bahan_alami"
                                                            {{ in_array('bahan_alami', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="bahan_alami">Bahan Alami</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="vegan" id="vegan"
                                                            {{ in_array('vegan', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="vegan">Vegan</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="cruelty_free" id="cruelty_free"
                                                            {{ in_array('cruelty_free', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="cruelty_free">Cruelty-Free</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="pewangi" id="pewangi"
                                                            {{ in_array('pewangi', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="pewangi">Pewangi</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="paraben" id="paraben"
                                                            {{ in_array('paraben', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="paraben">Paraben</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="sls" id="sls"
                                                            {{ in_array('sls', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="sls">SLS (Sodium Lauryl Sulfate)</label><br>
                                                        <input type="checkbox" name="preferred_products[]"
                                                            value="minyak_mineral" id="minyak_mineral"
                                                            {{ in_array('minyak_mineral', json_decode($profile->preferred_products)) ? 'checked' : '' }}>
                                                        <label for="minyak_mineral">Minyak Mineral</label><br>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12 pb-3">
                                                        <h6>Produk atau Bahan yang
                                                            Dihindari :</h6>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="bahan_alami" id="bahan_alami"
                                                            {{ in_array('bahan_alami', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="bahan_alami">Bahan Alami</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="vegan" id="vegan"
                                                            {{ in_array('vegan', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="vegan">Vegan</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="cruelty_free" id="cruelty_free"
                                                            {{ in_array('cruelty_free', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="cruelty_free">Cruelty-Free</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="pewangi" id="pewangi"
                                                            {{ in_array('pewangi', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="pewangi">Pewangi</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="paraben" id="paraben"
                                                            {{ in_array('paraben', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="paraben">Paraben</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="sls" id="sls"
                                                            {{ in_array('sls', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="sls">SLS (Sodium Lauryl Sulfate)</label><br>
                                                        <input type="checkbox" name="avoided_products[]"
                                                            value="minyak_mineral" id="minyak_mineral"
                                                            {{ in_array('minyak_mineral', json_decode($profile->avoided_products)) ? 'checked' : '' }}>
                                                        <label for="minyak_mineral">Minyak Mineral</label><br>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-12 pb-3">
                                                        <h6>Kebutuhan Spesifik
                                                            :</h6>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="anti_aging" id="anti_aging"
                                                            {{ in_array('anti_aging', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="anti_aging">Anti-aging</label><br>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="meratakan_warna_kulit" id="meratakan_warna_kulit"
                                                            {{ in_array('meratakan_warna_kulit', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="meratakan_warna_kulit">Meratakan Warna
                                                            Kulit</label><br>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="menghilangkan_jerawat" id="menghilangkan_jerawat"
                                                            {{ in_array('menghilangkan_jerawat', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="menghilangkan_jerawat">Menghilangkan
                                                            Jerawat</label><br>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="menghidrasi" id="menghidrasi"
                                                            {{ in_array('menghidrasi', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="menghidrasi">Menghidrasi</label><br>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="perlindungan_matahari" id="perlindungan_matahari"
                                                            {{ in_array('perlindungan_matahari', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="perlindungan_matahari">Perlindungan Matahari
                                                            (SPF)</label><br>
                                                        <input type="checkbox" name="specific_needs[]"
                                                            value="menghilangkan_noda_hitam"
                                                            id="menghilangkan_noda_hitam"
                                                            {{ in_array('menghilangkan_noda_hitam', json_decode($profile->specific_needs)) ? 'checked' : '' }}>
                                                        <label for="menghilangkan_noda_hitam">Menghilangkan Noda
                                                            Hitam</label><br>
                                                    </div>
                                                    <div class="col-xxl-12">
                                                        <div class="profile__btn">
                                                            <button type="submit" class="tp-btn">Update
                                                                Profil</button>
                                                        </div>
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
        </div>
    </section>
</x-web-component>
