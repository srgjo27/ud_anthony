<!DOCTYPE html>
<html lang="en">
@include('layouts.auth.head')

<body themebg-pattern="theme1">
    @include('layouts.auth.loader')
    <section class="login-block">
        {{ $slot }}
    </section>
    @include('layouts.auth.script')
</body>

</html>
