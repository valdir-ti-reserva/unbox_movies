<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Gender;

class Movie extends Model
{
    public $timestamps = false;

    public function gender_name(){
         return $this->belongsTo(Gender::class, 'gender_id');
    }

}
