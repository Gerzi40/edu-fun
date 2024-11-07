<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Post extends Model
{
    //
    protected $fillable = ['title', 'category_id', 'writer_id', 'body', 'photo_path'];

    public function writer(): BelongsTo
    {
        return $this->belongsTo(Writer::class);
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }
}
