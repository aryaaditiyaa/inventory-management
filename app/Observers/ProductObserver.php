<?php

namespace App\Observers;

use App\Models\Product;
use App\Models\Stock;
use Illuminate\Support\Facades\DB;

class ProductObserver
{
    /**
     * Handle the Product "created" event.
     *
     * @param \App\Models\Product $product
     * @return void
     */
    public function created(Product $product)
    {
        DB::table('products')
            ->where('id', $product->id)
            ->update([
                'code' => $product->category->code . str_pad($product->id, 4, "0", STR_PAD_LEFT) . $product->variant->code,
            ]);

        Stock::query()
            ->create([
                'product_id' => $product->id,
                'remaining_amount_of_items' => 0
            ]);
    }

    /**
     * Handle the Product "updated" event.
     *
     * @param \App\Models\Product $product
     * @return void
     */
    public function updated(Product $product)
    {

    }

    /**
     * Handle the Product "deleted" event.
     *
     * @param \App\Models\Product $product
     * @return void
     */
    public function deleted(Product $product)
    {
        DB::table('stocks')
            ->where('product_id', $product->id)
            ->delete();
    }

    /**
     * Handle the Product "restored" event.
     *
     * @param \App\Models\Product $product
     * @return void
     */
    public function restored(Product $product)
    {
        //
    }

    /**
     * Handle the Product "force deleted" event.
     *
     * @param \App\Models\Product $product
     * @return void
     */
    public function forceDeleted(Product $product)
    {
        //
    }
}
