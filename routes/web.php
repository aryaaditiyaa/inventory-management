<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

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
    Route::get('products/{product}/report', [ProductController::class, 'report'])->name('products.report');
    Route::get('/', function () {
        return view('vendor.voyager.dashboards.index');
    })->middleware('auth')->name('voyager.dashboard');
    Voyager::routes();
});
