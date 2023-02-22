<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Produk - {{ $product->name }}</title>

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
<div style="text-align: center; margin-bottom: 2rem">
    <h3>Laporan Produk - {{ $product->name }} | {{ now()->locale('id')->isoFormat('LLL') }}</h3>
</div>
<div>
    <table style="border: solid black 1px; width: 100%">
        <thead>
        <tr>
            <th rowspan="2">Tanggal</th>
            <th colspan="3">Pembelian</th>
            <th colspan="3">Pemakaian</th>
            <th colspan="3">Sisa</th>
        </tr>
        <tr>
            <th>Qty</th>
            <th>Harga</th>
            <th>Jumlah</th>
            <th>Qty</th>
            <th>Harga</th>
            <th>Jumlah</th>
            <th>Qty</th>
            <th>Harga</th>
            <th>Jumlah</th>
        </tr>
        </thead>
        <tbody>
        @foreach($reports as $report)
            <tr>
                <td>{{ $report['date'] }}</td>
                <td>{{ $report['incoming_stock']['qty'] }}</td>
                <td>Rp. {{ $report['incoming_stock']['price'] }}</td>
                <td>Rp. {{ $report['incoming_stock']['total_price'] }}</td>
                <td>{{ $report['outgoing_stock']['qty'] }}</td>
                <td>Rp. {{ $report['outgoing_stock']['price'] }}</td>
                <td>Rp. {{ $report['outgoing_stock']['total_price'] }}</td>
                <td>{{ $report['remaining_stock']['qty'] }}</td>
                <td>Rp. {{ $report['remaining_stock']['price'] }}</td>
                <td>Rp. {{ $report['remaining_stock']['total_price'] }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
<script type="text/javascript">
    window.onload = function () {
        window.print();
    }
</script>
</body>
</html>
