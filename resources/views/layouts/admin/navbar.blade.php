<nav class="pcoded-navbar">
    <div class="nav-list">
        <div class="pcoded-inner-navbar main-menu">
            <div class="pcoded-navigation-label">Menu</div>
            <ul class="pcoded-item pcoded-left-item">
                <li class="active">
                    <a href="{{ route('auth.admin.dashboard') }}" class="waves-effect waves-dark">
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
                        @foreach ($categories as $category)
                            <li class="pcoded-hasmenu">
                                <a href="javascript:void(0)" class="waves-effect waves-dark">
                                    <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                                    <span class="pcoded-mtext">{{ $category->maincategory_name }}</span>
                                </a>
                                <ul class="pcoded-submenu">
                                    @foreach ($category->subcategories as $subcategory)
                                        <li class>
                                            <a href="{{ route('admin.product', ['category' => $category->maincategory_name, 'subcategory' => $subcategory->subcategory_name]) }}"
                                                class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">{{ $subcategory->subcategory_name }}</span>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        @endforeach
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
