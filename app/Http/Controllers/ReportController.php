<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index()
    {
        $months = [];
        $now = Carbon::now()->startOfYear()->subMonth();
        $monthName = Carbon::now()->startOfYear()->subMonth();

        for ($m = 1; $m <= 12; $m++) {
            $months[] = [
                'value' => $now->addMonth()->format('d-m-Y'),
                'name' => $monthName->addMonth()->locale('id')->translatedFormat('F')
            ];
        }

        return view('vendor.voyager.incoming-outgoing-reports.browse', compact('months'));
    }

    public function incomingOutgoingStocks(Request $request)
    {
        $products = Product::query()
            ->with(['unit:id,name'])
            ->withSum('oldestIncomingStock', 'qty')
            ->withSum('oldestIncomingStock', 'total_price')
            ->withSum(['incomingStock' => function ($query) use ($request) {
                $query->when($request->period, function ($query) use ($request) {
                    $query->whereBetween('created_at', [Carbon::parse($request->period), Carbon::parse($request->period)->endOfMonth()]);
                });
            }], 'qty')
            ->withSum(['incomingStock' => function ($query) use ($request) {
                $query->when($request->period, function ($query) use ($request) {
                    $query->whereBetween('created_at', [Carbon::parse($request->period), Carbon::parse($request->period)->endOfMonth()]);
                });
            }], 'total_price')
            ->withSum(['outgoingStock' => function ($query) use ($request) {
                $query->when($request->period, function ($query) use ($request) {
                    $query->whereBetween('created_at', [Carbon::parse($request->period), Carbon::parse($request->period)->endOfMonth()]);
                });
            }], 'qty')
            ->withSum(['outgoingStock' => function ($query) use ($request) {
                $query->when($request->period, function ($query) use ($request) {
                    $query->whereBetween('created_at', [Carbon::parse($request->period), Carbon::parse($request->period)->endOfMonth()]);
                });
            }], 'total_price')
            ->get();

        return view('vendor.voyager.incoming-outgoing-reports.report', [
            'products' => $products
        ]);
    }
}
