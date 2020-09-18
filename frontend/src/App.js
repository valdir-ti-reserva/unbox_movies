import React from 'react';
import './App.css';
import Banner from './components/Banner'
import Row from './components/Row'
import Navbar from './components/Navbar'

function App() {
  return (
    <div className="app">
      <Navbar />

      <Banner />

      <Row title="Trendings" url="trending"/>
      <Row title="Movies" url="movies"/>
      <Row title="Discover" url="discover"/>
      {/* <Row title="Series" url="series"/> */}
      
    </div>
  );
}

export default App;
