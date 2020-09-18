import React, { useEffect, useState } from 'react'
import api from '../Api';
import './Banner.css'
import maskPoster from '../assets/images/mask_poster.jpg';

function Banner() {

  const [movie, setMovie] = useState([]);
  const [poster, setPoster] = useState('')

  useEffect(() => {
    
    async function fetchData(){
      const request = await api.get('/trending');
      setMovie(request.data.result[
          Math.floor(Math.random() * request.data.result.length - 1)
        ]
      );
    }
    fetchData();
    
  }, []);

  useEffect(() => {
    setPoster(movie?.poster || maskPoster);
  });

  function truncate(str, n){
    return str?.length > n ? str.substr(0, n-1) + "..." : str;
  }

  return (
    
    <header className="banner"
            style={{
              backgroundSize: "cover",
              backgroundImage: `url(${poster})`,
              backgroundPosition: 'center center'
            }}
    >

      <div className="banner_contents">

        {/* title */}
        <h1 className="banner_title">{movie?.title || movie?.original_title}</h1>

        {/* description */}
        <h1 className="banner_description">
          {truncate(movie?.overview, 150)}
        </h1>

      </div>
      
      <div className="banner_fadeBottom" />
      
    </header>
  )
}

export default Banner;