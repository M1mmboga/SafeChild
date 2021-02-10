<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use TCG\Voyager\Facades\Voyager;
use App\Models\Pulse;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\PulseController;
use Illuminate\Support\Facades\Auth;

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

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return Inertia::render('Dashboard');
// })->name('dashboard');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

//This is the landing page route
Route::get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

//This route shows pulse sensor readings
Route::get('/pulse', function () {

    if (Auth::user())
    {
        $user_id = Auth::user()->id;
        return view('pulse', ['pulses' => DB::table('pulses')
        ->select('*')
        ->join('users', 'users.childname', '=', 'pulses.childName')
        // ->where('users.id',$user_id)
        ->orderBy('pulses.created_at')
        ->paginate(15)]);
    }
   // return view('pulse', ['pulses' => App\Models\Pulse::latest('created_at')->simplePaginate(15)]);

})->name('pulse')->middleware('auth');
// })->name('pulse')->middleware('auth');



// Route::view('/pulse', 'pulse', [
//     'pulses' => App\Models\Pulse::withChildPulse()
// ]);

// Route::get('/pulse', 'PulseController@myPulse');

// Route::get('/location', function () {
//     return view('location');
// })->name('location');

//This route returns GPS location data readings
Route::get('/location', function () {

    if (Auth::user())
    {
        $user_id = Auth::user()->id;
        return view('location', ['locations' => DB::table('pulses')
        ->select('*')
        ->join('users', 'users.childname', '=', 'pulses.childName')
        // ->where('users.id',$user_id)
        ->orderBy('pulses.created_at')
        ->paginate(15)
        ]);
    }
      
   // return view('pulse', ['pulses' => App\Models\Pulse::latest('created_at')->simplePaginate(15)]);

})->name('location')->middleware('auth');

//This route returns the PowerBI analytics reports
Route::get('/report', function () {
    return view('report');
})->name('report');

//This route shows what we do as SafeChild 
Route::get('/locationreport', function () {
    return view('locationreport');
})->name('locationreport');