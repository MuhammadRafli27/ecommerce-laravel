<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('bower_components/font-awesome/css/font-awesome.min.css') }}">ß

</head>

<body>
    @php
        $total = 0;
    @endphp
    <div class="container">
        <h1>Anda Telah Melakukan Pemesanan</h1>
        <table class="table">
            <thead>
                <th>No</th>
                <th>Nama Produk</th>
                <th>Harga Produk</th>
                <th>Jumlah Produk</th>
                <th>Subtotal</th>
            </thead>
            <tbody>
             @foreach ($carts as $cart)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $cart->product->name }}</td>
                    <td>Rp.{{ number_format($cart->product->price) }}-,</td>
                    <td>{{ $cart->product->qty }}</td>
                    <td>Rp.{{number_format($cart->qty * $cart->product->price) }}-,</td>
                </tr>
             @endforeach
             @php
                $total += ($cart->qty * $cart->product->price)
             @endphp
            </tbody>
        </table>
        <h1>Total Pemesanan : {{ number_format($cart->qty * $cart->product->price) }}-,</h1>
    </div>

    <script src="{{asset('js/app.js')}}"></script>
</body>
</html>
