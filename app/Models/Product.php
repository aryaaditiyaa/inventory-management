<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Product extends Model
{
    use HasFactory;

    public function unit(): BelongsTo
    {
        return $this->belongsTo(ProductUnit::class, 'product_unit_id', 'id');
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(ProductCategory::class, 'product_category_id', 'id');
    }

    public function variant(): BelongsTo
    {
        return $this->belongsTo(ProductVariant::class, 'product_variant_id', 'id');
    }

    public function incomingStock(): HasMany
    {
        return $this->hasMany(IncomingStock::class, 'product_id', 'id');
    }

    public function outgoingStock(): HasMany
    {
        return $this->hasMany(OutgoingStock::class, 'product_id', 'id');
    }

    public function getTotalIncomingStockAttribute(): int
    {
        return IncomingStock::query()
            ->select('product_id', 'qty')
            ->where('product_id', $this->getAttributeValue('id'))
            ->sum('qty');
    }

    public function getTotalOutgoingStockAttribute(): int
    {
        return OutgoingStock::query()
            ->select('product_id', 'qty')
            ->where('product_id', $this->getAttributeValue('id'))
            ->sum('qty');
    }
}
