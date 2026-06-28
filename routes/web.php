<?php

use App\Http\Controllers\Home\HomeController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return redirect('/home');
})->name('home');

Route::get('/home', [HomeController::class, 'show'])
->name('home.show');

require __DIR__.'/settings.php';
require __DIR__.'/auth.php';