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

Route::get('/', 'MovieController@all');
Route::get('/movies', 'MovieController@all');

Route::get('/genders', 'GenderController@all');

Route::get('/trending', 'MovieController@trending');

Route::get('/discover', 'MovieController@discover');

Route::get('/series', function(Request $request) {
    return [ 'series' => true ];
});

