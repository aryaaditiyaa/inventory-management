<?php

namespace App\Http\Controllers;

use App\Models\IncomingStock;
use App\Models\OutgoingStock;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function report(Product $product)
    {
        $product->load([
            'incomingStock',
            'outgoingStock',
        ]);

        $mergedIncomingOutgoingStocksDates = $product->incomingStock->merge($product->outgoingStock)
            ->pluck('updated_at')
            ->map(function ($value) {
                return Carbon::parse($value)->locale('id')->format('d-m-Y');
            })
            ->sort()
            ->unique();

        foreach ($mergedIncomingOutgoingStocksDates as $dates) {
            $incomingStock = IncomingStock::query()
                ->where('product_id', $product->id)
                ->whereDate('updated_at', Carbon::parse($dates));

            $outgoingStock = OutgoingStock::query()
                ->where('product_id', $product->id)
                ->whereDate('updated_at', Carbon::parse($dates));

            $reports[] = [
                'date' => Carbon::parse($dates)->format('d-M-Y'),
                'incoming_stock' => [
                    'qty' => $incomingStock->sum('qty'),
                    'price' => $product->price,
                    'total_price' => $incomingStock->sum('total_price'),
                ],
                'outgoing_stock' => [
                    'qty' => $outgoingStock->sum('qty'),
                    'price' => $product->price,
                    'total_price' => $outgoingStock->sum('total_price'),
                ],
                'remaining_stock' => [
                    'qty' => $incomingStock->sum('qty') - $outgoingStock->sum('qty'),
                    'price' => $product->price,
                    'total_price' => $outgoingStock->sum('total_price') - $outgoingStock->sum('total_price'),
                ]
            ];
        }

//        return $reports;

        return view('vendor.voyager.products.report', [
            'reports' => $reports ?? null,
            'product' => $product,
        ]);
    }
}
