<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\ProductController as AdminProduct;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Web\HomeController;
use App\Http\Controllers\Web\ProductController as UserProduct;
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
    Route::get('/admin/product/create', [AdminProduct::class, 'create'])->name('admin.product.create');
    Route::get('/admin/product/{id}/edit', [AdminProduct::class, 'edit'])->name('admin.product.edit');
    Route::put('/admin/product/{id}', [AdminProduct::class, 'update'])->name('admin.product.update');
    Route::delete('/admin/product/{id}', [AdminProduct::class, 'destroy'])->name('admin.product.destroy');
    Route::get('/admin/product/{category}/{subcategory}', [AdminProduct::class, 'index'])->name('admin.product');
    Route::get('/api/subcategories/{category_id}', [AdminProduct::class, 'getSubcategories']);
    Route::post('/admin/product', [AdminProduct::class, 'store'])->name('admin.product.store');

    Route::get('/admin/logout', [AuthController::class, 'do_logout'])->name('auth.admin.logout');
});

// Route group for user
Route::middleware(['auth', 'checkRole:user'])->group(function () {
    Route::get('/home', [HomeController::class, 'index'])->name('auth.user.dashboard');
    Route::get('/product/{id}/show', [UserProduct::class, 'show'])->name('user.product.show');
    Route::post('/product/{id}/rate', [UserProduct::class, 'rate'])->name('user.product.rate');

    Route::get('/user/logout', [AuthController::class, 'do_logout'])->name('auth.user.logout');
});
