import React, { useState, useEffect } from 'react';
import axios from '../Api';
import './Row.css';
import Youtube from 'react-youtube';
import movieTrailer from 'movie-trailer';
import MovieDetails from './MovieDetails';

function Row({ title, url, isLargeRow }) {

  const [movies, setMovies] = useState([]);
  const [search, setSearch] = useState('');
  const [details, setDetails] = useState([]);
  const [trailerUrl, setTrailerUrl] = useState("");
  const [showDetails, setShowDetails] = useState(false);
  
  useEffect(()=>{

    async function fetchData(){
      const request = await axios.get(`/${url}`);
      setMovies(request.data.result);      
      return request;
    }
    fetchData();
  }, []);

  const handleSearch = async event => {    
    var moviesFiltered = [];
    setSearch(event.target.value);
    const query = event.target.value;    
    if(query){
      const request = await axios.get(`/${url}`);
      moviesFiltered = request.data.result.filter( movie => movie.name.toLowerCase().includes(query.toLowerCase()))
      setMovies(moviesFiltered);
    }else{
      const request = await axios.get(`/${url}`);
      setMovies(request.data.result);
    }
  };

  const opts = {
    height: "390",
    width: "100%",
    playerVars: {
      autoplay: 1
    }
  }

  const handleClick = (movie) => {
    setShowDetails(false);
    if(trailerUrl){
      setTrailerUrl('');
    }else{
      setShowDetails(true);
      setDetails(movie);
      movieTrailer(movie?.title || "")
        .then((url) => {
          const urlParams = new URLSearchParams(new URL(url).search);
          setTrailerUrl(urlParams.get('v'));
        })
        .catch(error => console.log(error));
    }
  }

  return (
    <div className="row">
      
      <div className="searchBox">
        <input type="text" placeholder="Buscar" onChange={handleSearch} value={search} />
      </div>

      <h2>{title}</h2>

      <div className="row_posters">
        {/* Posters */}
        {movies.map(movie => (
          <img 
            key={movie.id}
            onClick={() => handleClick(movie)}
            className={`row_poster ${isLargeRow && "row_posterLarge"}`}
            src={movie?.poster}
            alt={movie.title}
          />

        ))}
      </div>
      
      {showDetails && url === 'discover' &&
       <MovieDetails details={details}/>
      }

      {trailerUrl && <Youtube videoId={trailerUrl} opts={opts} />}

    </div>
  );
}

export default Row;