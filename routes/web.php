<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Web\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
 */

Route::get('/', [HomeController::class, 'index'])->name('home');

// Route for auth
Route::get('/login', [AuthController::class, 'index'])->name('auth.signin');
Route::get('/register', [AuthController::class, 'register'])->name('auth.signup');
Route::post('/login', [AuthController::class, 'do_login'])->name('do_login');
Route::post('/register', [AuthController::class, 'do_register'])->name('do_register');

// Route group for admin
Route::middleware(['auth', 'checkRole:admin'])->group(function () {
    Route::get('/admin/dashboard', [DashboardController::class, 'index'])->name('auth.admin.dashboard');
    Route::get('/admin/product/create', [ProductController::class, 'create'])->name('admin.product.create');
    Route::get('/admin/product/{id}/edit', [ProductController::class, 'edit'])->name('admin.product.edit');
    Route::put('/admin/product/{id}', [ProductController::class, 'update'])->name('admin.product.update');
    Route::delete('/admin/product/{id}', [ProductController::class, 'destroy'])->name('admin.product.destroy');
    Route::get('/admin/product/{category}/{subcategory}', [ProductController::class, 'index'])->name('admin.product');
    Route::get('/api/subcategories/{category_id}', [ProductController::class, 'getSubcategories']);
    Route::post('/admin/product', [ProductController::class, 'store'])->name('admin.product.store');

    Route::get('/admin/logout', [AuthController::class, 'do_logout'])->name('auth.admin.logout');
});

// Route group for user
Route::middleware(['auth', 'checkRole:user'])->group(function () {
    Route::get('/home', [HomeController::class, 'index'])->name('auth.user.dashboard');

    Route::get('/user/logout', [AuthController::class, 'do_logout'])->name('auth.user.logout');
});
