import React from "react";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from  "../util/route_util";
import SessionFormContainer from "./session_form/session_form_container";
import EventFormContainer from "./events/event_form_container";


const App = () => (
  <div>

    <Link to="/">
      <h1>Syndicator</h1>
    </Link>
    <Switch>
      <AuthRoute path="/login" component={SessionFormContainer} />
      <Switch>
        <ProtectedRoute path="/" component={EventFormContainer}/>
         <Route exact path="/" component={SessionFormContainer} />
      </Switch>
    </Switch>

  </div>
);

export default App;
