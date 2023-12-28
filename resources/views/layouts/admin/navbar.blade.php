<nav class="pcoded-navbar">
    <div class="nav-list">
        <div class="pcoded-inner-navbar main-menu">
            <div class="pcoded-navigation-label">Menu</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="active">
                    <a href="#" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                        <span class="pcoded-mtext">Dashboard</span>
                    </a>
                </li>
                <li class="pcoded-hasmenu">
                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                        <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                        <span class="pcoded-mtext">Produk</span>
                    </a>
                    <ul class="pcoded-submenu">
                        <li class=" pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-mtext">Skincare</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Pembersih Wajah']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Pembersih Wajah</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Sabun Pencuci Muka']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Sabun Pencuci Muka</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Day Cream']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Day Cream</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Night Cream']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Night Cream</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Pelembab Wajah']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Pelembab Wajah</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'UV']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">UV</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Sun Screen']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Sun Screen</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Skincare', 'subcategory' => 'Serum']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Serum</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class=" pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-mtext">Haircare</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Shampoo']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Shampoo</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Hair Tonic']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Hair Tonic</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Kondisioner']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Kondisioner</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Hair Mask']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Hair Mask</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Hair Serum']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Hair Serum</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Haircare', 'subcategory' => 'Hair Oil']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Hair Oil</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class=" pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-mtext">Bodycare</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Sabun Mandi']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Sabun Mandi</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Body Lotion']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Body Lotion</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Exfoliating Gel']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Exfoliating Gel</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Body Serum']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Body Serum</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Body Oil']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Body Oil</span>
                                    </a>
                                </li>
                                <li class>
                                    <a href="{{ route('admin.product', ['category' => 'Bodycare', 'subcategory' => 'Body Scrub']) }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Body Scrub</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
