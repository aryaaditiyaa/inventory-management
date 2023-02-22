<?php

namespace App\Helpers;

use App\Models\Stock;

class StockHelper
{
    public static function increase($productId, $increaseTo)
    {
        $stocks = Stock::query()
            ->where('product_id', $productId)
            ->first();

        $currentRemainingAmountOfItems = $stocks->remaining_amount_of_items;

        $stocks->update([
            'remaining_amount_of_items' => $currentRemainingAmountOfItems + $increaseTo
        ]);
    }

    public static function decrease($productId, $decreaseTo)
    {
        $stocks = Stock::query()
            ->where('product_id', $productId)
            ->first();

        $currentRemainingAmountOfItems = $stocks->remaining_amount_of_items;

        $stocks->update([
            'remaining_amount_of_items' => $currentRemainingAmountOfItems - $decreaseTo
        ]);
    }
}
