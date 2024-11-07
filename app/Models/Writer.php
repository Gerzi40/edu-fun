<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Writer extends Model
{
    //
    protected $fillable = ['name', 'category_id', 'photo_path'];

    public function category(): BelongsTo{
        return $this->BelongsTo(Category::class);
    }

    public function post(): HasMany{
        return $this->hasMany(Post::class);
    }
}
