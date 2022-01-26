<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf_token" content="{{ csrf_token() }}">
        <!-- <link rel="stylesheet" href="{{ asset('public/css/app.css') }}"> -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">

        <title>Laravel vue.js</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->

    </head>
    <body>
        <br>
        <div id="app">
            <router-view></router-view>
        </div>
    </body>

    <script src="{{ mix('js/app.js') }}"></script>
    <!-- <script src="{{ asset('public/js/app.js') }}"></script> -->
</html>
