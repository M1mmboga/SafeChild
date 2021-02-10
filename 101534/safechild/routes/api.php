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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('pulses', 'PulseController@getAllPulses');
Route::get('pulse/{id}', 'PulseController@getPulses');
Route::post('pulses', 'PulseController@createPulses');
Route::put('pulse/{id}', 'PulseController@updatePulses');
Route::delete('pulse/{id}','PulseController@deletePulses');