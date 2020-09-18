import React from 'react';
import {BrowserRouter, Switch, Route} from 'react-router-dom';
import Movies from './components/Movies';
import Series from './components/Series';

function Routes(){
  return(
    <BrowserRouter>
      <Switch>
        <Route path="/" exact component={Movies}/>
        <Route path="/series" exact component={Series}/>
      </Switch>
    </BrowserRouter>
  )
}

export default Routes;