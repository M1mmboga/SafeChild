<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pulse;
class PulseController extends Controller
{
    //
    public function getAllPulses() {
        // logic to get all pulses goes here
        $pulse = Pulse::get()->toJson(JSON_PRETTY_PRINT);
    return response($pulse, 200);

    }
  
      public function createPulses(Request $request) {
        // logic to create a pulse record goes here
      }
  
      public function getPulses($id) {
        // logic to get a child's pulse record goes here
      }
  
      public function updatePulses(Request $request, $id) {
        // logic to update a pulse record goes here
      }
  
      public function deletePulses ($id) {
        // logic to delete a pulse record goes here
      }

      public function myPulse()

    {

        $pulses = Pulse::select(

                            "pulses.id", 

                            "pulses.childName"
                        )

                        ->join("users", "pulses.childName", "=", "users.childname")

                        ->get();

  

        dd($pulses);
        foreach ($pulses as $pulse)
            {
            echo $pulse->id;
            echo $pulse->childName;
            echo $pulse->created_at;
            echo $pulse->updated_at;
            echo $pulse->pulsevalues;
            
                    }
    }
}
