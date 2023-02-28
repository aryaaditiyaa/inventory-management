<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Rekap Stock In - Stock Out</title>

</head>
<body onload="windows.print()">
<style>
    html, body {
        font-family: Calibri, sans-serif;
    }

    table, th, td {
        border: .5px solid black;
        border-collapse: collapse;
        padding: .5rem;
    }

    td {
        font-weight: bold;
        vertical-align: top;
    }

    @media print {
        table.report {
            page-break-inside: avoid;
            page-break-after: auto;
        }

        table.report tr {
            page-break-inside: avoid;
            page-break-after: always;
        }

        table.report td {
            page-break-inside: avoid;
            page-break-after: always;
        }

        table.report thead {
            display: table-header-group
        }

        table.report tfoot {
            display: table-footer-group
        }
    }
</style>
<div>
    <table style="border: solid black 1px; width: 100%; text-align: center">
        <thead>
        <tr>
            <th colspan="12">PT DREVOO INOVATIF INDONESIA</th>
        </tr>
        <tr>
            <th colspan="12">LAPORAN STOK BARANG</th>
        </tr>
        <tr>
            <th colspan="12" style="text-transform: uppercase">PERIODE {{ \Carbon\Carbon::parse(request()->period)->locale('id')->translatedFormat('F') }}</th>
        </tr>
        <tr>
            <th rowspan="2">No</th>
            <th rowspan="2">SKU</th>
            <th rowspan="2">Nama Produk</th>
            <th rowspan="2">Unit</th>
            <th colspan="2">Persediaan Awal</th>
            <th colspan="2">Masuk</th>
            <th colspan="2">Keluar</th>
            <th colspan="2">Stok Akhir</th>
        </tr>
        <tr>
            <th>Qty</th>
            <th>Jumlah</th>
            <th>Qty</th>
            <th>Jumlah</th>
            <th>Qty</th>
            <th>Jumlah</th>
            <th>Qty</th>
            <th>Jumlah</th>
        </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{ $loop->iteration ?? '-' }}</td>
                <td>{{ $product->code ?? '-' }}</td>
                <td>{{ $product->name ?? '-' }}</td>
                <td>{{ $product->unit->name ?? '-' }}</td>
                <td class="oldest_incoming_stock_sum_qty">{{ $product->oldest_incoming_stock_sum_qty ?? '0' }}</td>
                <td class="oldest_incoming_stock_sum_total_price">{{ $product->oldest_incoming_stock_sum_total_price ?? '0' }}</td>
                <td class="incoming_stock_sum_qty">{{ $product->incoming_stock_sum_qty ?? '0' }}</td>
                <td class="incoming_stock_sum_total_price">{{ $product->incoming_stock_sum_total_price ?? '0' }}</td>
                <td class="outgoing_stock_sum_qty">{{ $product->outgoing_stock_sum_qty ?? '0' }}</td>
                <td class="outgoing_stock_sum_total_price">{{ $product->outgoing_stock_sum_total_price ?? '0' }}</td>
                <td class="remaining_stock_sum_qty">{{ $product->incoming_stock_sum_qty - $product->outgoing_stock_sum_qty ?? '0' }}</td>
                <td class="remaining_stock_sum_total_price">{{ $product->incoming_stock_sum_total_price - $product->outgoing_stock_sum_total_price ?? '0' }}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4">Total:</td>
            <td id="oldest_incoming_stock_sum_qty"></td>
            <td id="oldest_incoming_stock_sum_total_price"></td>
            <td id="incoming_stock_sum_qty"></td>
            <td id="incoming_stock_sum_total_price"></td>
            <td id="outgoing_stock_sum_qty"></td>
            <td id="outgoing_stock_sum_total_price">aa</td>
            <td id="remaining_stock_sum_qty"></td>
            <td id="remaining_stock_sum_total_price"></td>
        </tr>
        </tbody>
    </table>
</div>
<script src="{{ asset('js/jquery-3.6.3.min.js') }}"></script>
<script type="text/javascript">
    let oldest_incoming_stock_sum_qty = 0;
    $('.oldest_incoming_stock_sum_qty').each(function () {
        oldest_incoming_stock_sum_qty += parseFloat($(this).text());
    });
    $('#oldest_incoming_stock_sum_qty').html(oldest_incoming_stock_sum_qty)

    let oldest_incoming_stock_sum_total_price = 0;
    $('.oldest_incoming_stock_sum_total_price').each(function () {
        oldest_incoming_stock_sum_total_price += parseFloat($(this).text());
    });
    $('#oldest_incoming_stock_sum_total_price').html(oldest_incoming_stock_sum_total_price)

    let incoming_stock_sum_qty = 0;
    $('.incoming_stock_sum_qty').each(function () {
        incoming_stock_sum_qty += parseFloat($(this).text());
    });
    $('#incoming_stock_sum_qty').html(incoming_stock_sum_qty)

    let incoming_stock_sum_total_price = 0;
    $('.incoming_stock_sum_total_price').each(function () {
        incoming_stock_sum_total_price += parseFloat($(this).text());
    });
    $('#incoming_stock_sum_total_price').html(incoming_stock_sum_total_price)

    let outgoing_stock_sum_qty = 0;
    $('.outgoing_stock_sum_qty').each(function () {
        outgoing_stock_sum_qty += parseFloat($(this).text());
    });
    $('#outgoing_stock_sum_qty').html(outgoing_stock_sum_qty)

    let outgoing_stock_sum_total_price = 0;
    $('.outgoing_stock_sum_total_price').each(function () {
        outgoing_stock_sum_total_price += parseFloat($(this).text());
    });
    $('#outgoing_stock_sum_total_price').html(outgoing_stock_sum_total_price)

    let remaining_stock_sum_qty = 0;
    $('.remaining_stock_sum_qty').each(function () {
        remaining_stock_sum_qty += parseFloat($(this).text());
    });
    $('#remaining_stock_sum_qty').html(remaining_stock_sum_qty)

    let remaining_stock_sum_total_price = 0;
    $('.remaining_stock_sum_total_price').each(function () {
        remaining_stock_sum_total_price += parseFloat($(this).text());
    });
    $('#remaining_stock_sum_total_price').html(remaining_stock_sum_total_price)

    window.onload = function () {
        window.print();
    }
</script>
</body>
</html>
