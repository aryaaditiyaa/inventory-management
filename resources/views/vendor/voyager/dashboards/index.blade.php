@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '.'Dashboard')

@section('content')
    <div class="page-content browse container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="card" style="border-radius: 0.25rem; background-color: rgb(22 163 74); color: white">
                    <div class="card-body">
                        <p class="mb-2" style="font-size: 1.4rem">Total Harga Sisa Produk</p>
                        <div style="display: flex;align-items: center; column-gap: 0.75rem; font-size: 1.6rem">
                            <i class="voyager-dollar"></i>
                            <span style="font-weight: bold">Rp. {{ number_format($remainingProductsTotalPrice, 0, ', ', '.') }}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card" style="border-radius: 0.25rem; background-color: rgb(124 58 237); color: white">
                    <div class="card-body">
                        <p class="mb-2" style="font-size: 1.4rem">Total Produk</p>
                        <div style="display: flex;align-items: center; column-gap: 0.75rem; font-size: 1.6rem">
                            <i class="voyager-data"></i>
                            <span style="font-weight: bold">{{ $productsCount }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="card" style="border-radius: 0.25rem; background-color: rgb(13 148 136); color: white">
                    <div class="card-body">
                        <p class="mb-2" style="font-size: 1.4rem">Total Stock In</p>
                        <div style="display: flex;align-items: center; column-gap: 0.75rem; font-size: 1.6rem">
                            <i class="voyager-double-down"></i>
                            <span style="font-weight: bold">{{ $incomingStocksQtySum }}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card" style="border-radius: 0.25rem; background-color: rgb(202 138 4); color: white">
                    <div class="card-body">
                        <p class="mb-2" style="font-size: 1.4rem">Total Stock Out</p>
                        <div style="display: flex;align-items: center; column-gap: 0.75rem; font-size: 1.6rem">
                            <i class="voyager-double-up"></i>
                            <span style="font-weight: bold">{{ $outgoingStocksQtySum }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
