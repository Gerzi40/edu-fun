<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    @include('customs.bootstrap5')
    <link rel="stylesheet" href="/style/index.css">
</head>
<body>
    <div class="">
        @include('layouts.header')
    
        @yield('content')

        @include('layouts.footer')
    </div>
    
</body>
</html>