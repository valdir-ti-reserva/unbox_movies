import React, {useState, useEffect} from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';

function Navbar (){
  const [show, handleShow] = useState(false);  
  const userLang = navigator.language || navigator.userLanguage; 
    
  useEffect(()=>{
    window.addEventListener("scroll", () => {
      if(window.scrollY > 100){
        handleShow(true);
      }else{
        handleShow(false);
      }
    })
    return () => {
      window.removeEventListener("scroll", null);
    }
  }, []);

  return (
    <div className={`nav ${show && "nav_black"}`}>
        <img
          className="nav_logo"
          src="data:image/png;base64,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"
          alt="Clickbus Logo"
        />

        <div className="links">
          <Link to="/">Filmes</Link> | <Link to="/series">Series</Link>
        </div>

        <h4 className="nav_lang">{userLang}</h4>

        <img
          className="nav_avatar"
          src="https://occ-0-1567-1123.1.nflxso.net/dnm/api/v6/Z-WHgqd_TeJxSuha8aZ5WpyLcX8/AAAABSz8U4uC6_i0Fuc-oUrLQ-6_4cN4K_0kkS76utZWTEfAAFwG6TB09D0nSC1NqqtCJfckNvLVMajXBYjOSGc7zZi0Dx7z.png?r=b97"
          alt="Avatar Logo"
        />
    </div>
  );


}

export default Navbar;

