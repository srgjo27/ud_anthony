<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config('app.name') . ' | ' . $title ?? config('app.name') }}</title>

    <!-- Place icon in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="">

    <!-- Theme of Font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:500,700" rel="stylesheet">

    <!-- Theme of CSS -->
    <link rel="stylesheet" type="text/css"
        href="{{ asset('admin/files/bower_components/bootstrap/css/bootstrap.min.css') }}">

    <link rel="stylesheet" href="{{ asset('admin/files/assets/pages/waves/css/waves.min.css') }}" type="text/css"
        media="all">

    <link rel="stylesheet" type="text/css" href="{{ asset('admin/files/assets/icon/feather/css/feather.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('admin/files/assets/icon/themify-icons/themify-icons.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/files/assets/icon/icofont/css/icofont.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/files/assets/css/font-awesome-n.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('admin/files/assets/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/files/assets/css/pages.css') }}">
</head>
