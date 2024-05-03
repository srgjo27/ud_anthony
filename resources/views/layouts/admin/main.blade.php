<!DOCTYPE html>
<html lang="en">
@include('layouts.admin.head')

<body>
    @include('layouts.admin.loader')
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            @include('layouts.admin.header')
            @include('layouts.admin.sidebar')
            @include('layouts.admin.chat')
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    @include('layouts.admin.navbar')
                    <div class="pcoded-content">
                        {{ $slot }}
                    </div>
                    <div id="styleSelector"></div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.admin.script')
</body>

</html>
