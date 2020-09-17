<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Movie;

class MovieController extends Controller
{
    private $array = ['error'=>'', 'result'=>[]];

    public function all(Request $request){

        $movies = Movie::all();

        foreach($movies as $movie){

            $this->array['result'][] = [
                'id'=>$movie->id,
                'title'=>$movie->title,
                'overview'=>$movie->overview,
                'poster'=>$movie->poster,
                'gender'=>$movie->gender_name,
            ];
        }

        return $this->array;
    }

    public function trending(){

        $movies = Movie::where('trending', 1)
                                ->orderBy('title', 'desc')
                                ->take(10)
                                ->get();

        foreach($movies as $movie){
            $this->array['result'][] = [
                'id'=>$movie->id,
                'title'=>$movie->title,
                'overview'=>$movie->overview,
                'poster'=>$movie->poster,
                'gender'=>$movie->gender_name,
            ];
        }

        return $this->array;
    }

    public function discover(){

        $movies = Movie::where('discover', 1)
                                ->orderBy('title', 'desc')
                                ->take(10)
                                ->get();

        foreach($movies as $movie){
            $this->array['result'][] = [
                'id'=>$movie->id,
                'title'=>$movie->title,
                'overview'=>$movie->overview,
                'poster'=>$movie->poster,
                'gender'=>$movie->gender_name,
            ];
        }

        return $this->array;
    }
}
