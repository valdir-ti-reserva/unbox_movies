import React, { useEffect, useState } from 'react';
import './MovieDetails.css';

function MovieDetails({details}) {

  const [movie, setMovie] = useState('');

  useEffect(()=>{
    setMovie(details);
  }, [details]);

  return (
    <div className="details">
      <div className="details_title">
        <h3 className="title">Título Original:</h3><h3>{movie.original_title}</h3>
      </div>
      <div className="details_duration">
      <h3 className="title">Duração:</h3><h3>{movie.duration}</h3>
      </div>
      <div className="details_sumary">
        <h3 className="title">Sinopse:</h3><h3>{movie.overview}</h3>
      </div>
    </div>
  )
}

export default MovieDetails;
