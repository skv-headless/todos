rails new todos --webpack=react
bin/rails generate graphql:install
yarn add apollo-boost react-apollo graphql
rails g model Todo text completed:boolean
bin/rails db:migrate
