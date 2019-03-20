import React, { Fragment } from "react";
import ReactDOM from 'react-dom'
import ApolloClient from "apollo-boost";
import gql from "graphql-tag";
import { ApolloProvider, Query, Mutation } from "react-apollo";

const client = new ApolloClient({
  uri: "/graphql"
});

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>Todos</h1>
      </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
