<?php

namespace App\Observers;

use App\Helpers\StockHelper;
use App\Models\IncomingStock;
use App\Models\Stock;
use Illuminate\Support\Facades\DB;

class IncomingStockObserver
{
    /**
     * Handle the IncomingStock "created" event.
     *
     * @param  \App\Models\IncomingStock  $incomingStock
     * @return void
     */
    public function created(IncomingStock $incomingStock)
    {
        DB::table('incoming_stocks')
            ->where('id', $incomingStock->id)
            ->update([
                'total_price' => $incomingStock->product->price * $incomingStock->qty
            ]);

        StockHelper::increase($incomingStock->product_id, $incomingStock->qty);
    }

    /**
     * Handle the IncomingStock "updated" event.
     *
     * @param  \App\Models\IncomingStock  $incomingStock
     * @return void
     */
    public function updated(IncomingStock $incomingStock)
    {
        //
    }

    /**
     * Handle the IncomingStock "deleted" event.
     *
     * @param  \App\Models\IncomingStock  $incomingStock
     * @return void
     */
    public function deleted(IncomingStock $incomingStock)
    {
        StockHelper::decrease($incomingStock->product_id, $incomingStock->qty);
    }

    /**
     * Handle the IncomingStock "restored" event.
     *
     * @param  \App\Models\IncomingStock  $incomingStock
     * @return void
     */
    public function restored(IncomingStock $incomingStock)
    {
        //
    }

    /**
     * Handle the IncomingStock "force deleted" event.
     *
     * @param  \App\Models\IncomingStock  $incomingStock
     * @return void
     */
    public function forceDeleted(IncomingStock $incomingStock)
    {
        //
    }
}
