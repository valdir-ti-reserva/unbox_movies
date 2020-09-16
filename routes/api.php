<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function(Request $request) {
    return [ 'movies' => true ];
});
Route::get('/movies', function(Request $request) {
    return [ 'movies' => true ];
});
Route::get('/trending', function(Request $request) {
    return [ 'trending' => true ];
});
Route::get('/discover', function(Request $request) {
    return [ 'discover' => true ];
});
Route::get('/genders', function(Request $request) {
    return [ 'genders' => true ];
});
Route::get('/series', function(Request $request) {
    return [ 'series' => true ];
});
