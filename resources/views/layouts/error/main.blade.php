<!DOCTYPE html>
<html lang="en-us" class="no-js">

@include('layouts.error.head')

<body class="flat">
    <div id="particles-js"></div>
    <div class="content">
        {{ $slot }}
    </div>
    @include('layouts.error.script')
</body>

</html>
