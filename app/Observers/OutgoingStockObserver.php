<?php

namespace App\Observers;

use App\Helpers\StockHelper;
use App\Models\OutgoingStock;
use Illuminate\Support\Facades\DB;

class OutgoingStockObserver
{
    /**
     * Handle the OutgoingStock "created" event.
     *
     * @param  \App\Models\OutgoingStock  $outgoingStock
     * @return void
     */
    public function created(OutgoingStock $outgoingStock)
    {
        DB::table('outgoing_stocks')
            ->where('id', $outgoingStock->id)
            ->update([
                'total_price' => $outgoingStock->product->price * $outgoingStock->qty
            ]);

        StockHelper::decrease($outgoingStock->product_id, $outgoingStock->qty);
    }

    /**
     * Handle the OutgoingStock "updated" event.
     *
     * @param  \App\Models\OutgoingStock  $outgoingStock
     * @return void
     */
    public function updated(OutgoingStock $outgoingStock)
    {
        //
    }

    /**
     * Handle the OutgoingStock "deleted" event.
     *
     * @param  \App\Models\OutgoingStock  $outgoingStock
     * @return void
     */
    public function deleted(OutgoingStock $outgoingStock)
    {
        StockHelper::increase($outgoingStock->product_id, $outgoingStock->qty);
    }

    /**
     * Handle the OutgoingStock "restored" event.
     *
     * @param  \App\Models\OutgoingStock  $outgoingStock
     * @return void
     */
    public function restored(OutgoingStock $outgoingStock)
    {
        //
    }

    /**
     * Handle the OutgoingStock "force deleted" event.
     *
     * @param  \App\Models\OutgoingStock  $outgoingStock
     * @return void
     */
    public function forceDeleted(OutgoingStock $outgoingStock)
    {
        //
    }
}
