<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\ChatController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->name('dashboard');



Route::middleware(['auth:sanctum', 'verified'])->get('/people', function () {
    return Inertia::render('People/people');
})->name('people');

Route::middleware(['auth:sanctum', 'verified'])->get('/friends', function () {
    return Inertia::render('Friends/friends');
})->name('friends');

Route::middleware(['auth:sanctum', 'verified'])->get('/chat', function () {
    return Inertia::render('Chat/container');
})->name('chat');

Route::group(['middleware' => ['auth:sanctum']], function ()
{
    Route::get('/chat/rooms', [ChatController::class, 'rooms']);
    Route::get('/chat/room/{roomId}/messages', [ChatController::class, 'messages']);
    Route::post('/chat/room/{roomId}/message', [ChatController::class, 'newMessage']);
    Route::get('/allfriends', [ChatController::class, 'allFriends']);
    Route::get('/allpeople', [ChatController::class, 'allPeople']);
    Route::get('/search', [ChatController::class, 'search']);
    Route::post('/addf/{id}', [ChatController::class, 'addFriend']);
    Route::post('/removef/{id}', [ChatController::class, 'removeFriend']);


});

