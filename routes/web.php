<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReportController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Http\Controllers\VoyagerAuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::get('/', function () {
        $incomingStocksTotalPriceSum = \App\Models\IncomingStock::query()
            ->select('id', 'qty')
            ->sum('total_price');

        $outgoingStocksTotalPriceSum = \App\Models\OutgoingStock::query()
            ->select('id', 'qty')
            ->sum('total_price');

        $productsCount = \App\Models\Product::query()
            ->select('id')
            ->count();

        $incomingStocksQtySum = \App\Models\IncomingStock::query()
            ->select('id', 'qty')
            ->sum('qty');

        $outgoingStocksQtySum = \App\Models\OutgoingStock::query()
            ->select('id', 'qty')
            ->sum('qty');

        return view('vendor.voyager.dashboards.index', [
            'remainingProductsTotalPrice' => $incomingStocksTotalPriceSum - $outgoingStocksTotalPriceSum,
            'productsCount' => $productsCount,
            'incomingStocksQtySum' => $incomingStocksQtySum,
            'outgoingStocksQtySum' => $outgoingStocksQtySum,
        ]);
    })->middleware('admin.user')->name('voyager.dashboard');

    Route::get('products/{product}/report', [ProductController::class, 'report'])->name('products.report');
    Route::get('incoming-outgoing-reports', [ReportController::class, 'index'])->name('incoming-outgoing.index');
    Route::get('incoming-outgoing-reports/report', [ReportController::class, 'incomingOutgoingStocks'])->name('incoming-outgoing.report');

});
