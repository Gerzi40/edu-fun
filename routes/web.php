<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\ReadMoreController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'getAllPosts']);

Route::get('/category/DataScience', [CategoryController::class, 'getDataSciencePosts']);

Route::get('/category/NetworkSecurity', [CategoryController::class, 'getNetworkSecurityPosts']);

Route::get('/aboutus', [AboutUsController::class, 'viewAboutUs']);

Route::get('/writers', [WriterController::class, 'getAllWriters']);

Route::get('/writer/{id}', [WriterController::class, 'getSpecificPost']);

Route::get('/readmore/{id}', [ReadMoreController::class, 'showPostDetails']);

Route::get('/popular', [PopularController::class, 'popularPaginate']);
