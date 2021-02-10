<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pulse extends Model
{
    //use HasFactory;
    protected $fillable=[
        'pulsevalue'
    ];

    public static function withChildPulse()
{
    $pulses = DB::table('pulses')
        ->join('users', 'pulses.childName', '=', 'users.childname')
        ->select('pulses.*')
        ->get();
        
}
}
