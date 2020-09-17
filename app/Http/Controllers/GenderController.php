<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gender;

class GenderController extends Controller
{
    private $array = ['error'=>'', 'result'=>[]];

    public function all(Request $request){

        $genders = Gender::all();

        foreach($genders as $gender){
            $this->array['result'][] = [
                'id'=>$gender->id,
                'name'=>$gender->name
            ];
        }

        return $this->array;
    }
}
