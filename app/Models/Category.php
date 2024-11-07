<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    //
    protected $fillable = ['category_name'];
    public function writer(): HasMany
    {
        return $this->HasMany(Writer::class);
    }
    public function post(): HasMany
    {
        return $this->hasMany(Post::class);
    }
}
