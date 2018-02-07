import React from "react";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from  "../util/route_util";

const App = () => (
  <div>

    <Link to="/">
      <h1>Syndicator</h1>
    </Link>
    <Switch>
      <AuthRoute path="/login" component={SessionFormContainer} />
      <Switch>
         <Route exact path="/" component={SessionFormContainer} />
      </Switch>
    </Switch>

  </div>
);

export default App;
