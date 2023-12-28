<!DOCTYPE html>
<html lang="en">
@include('layouts.web.head')

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->
    @include('layouts.web.loader')
    @include('layouts.web.offcanvas')
    @include('layouts.web.mobile')
    @include('layouts.web.search')
    @include('layouts.web.cart')
    @include('layouts.web.header')
    <main>
        {{ $slot }}
    </main>
    @include('layouts.web.footer')
    @include('layouts.web.script')
</body>

</html>
