import React from 'react';

import './Series.css';

import Banner from './Banner'
import Row from './Row'
import Navbar from './Navbar'

function Series() {
  return (
    <>
        <Navbar />
        <Banner url="series-trending"/>
        <Row title="Series" url="series"/>
        <Row title="Trending" url="series-trending"/>
        <Row title="Discover" url="series-discover"/>
    </>
  );
}

export default Series;