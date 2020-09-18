import React from 'react';

import './Movies.css';

import Banner from './Banner'
import Row from './Row'
import Navbar from './Navbar'

function Movies() {
  return (
    <>
        <Navbar />

        <Banner url="trending"/>

        <Row title="Trendings" url="trending"/>
        <Row title="Movies" url="movies"/>
        <Row title="Discover" url="discover"/>
    </>
  );
}

export default Movies;