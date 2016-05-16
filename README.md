## React on Rails vs Rails

This is a demo app that serves both a Rails app and a React on Rails app.

The React on Rails portion comes from a React on Rails tutorial that can be found with the following information.

--------

Support files for [React.js - A guide for Rails developers](https://www.airpair.com/reactjs/posts/reactjs-a-guide-for-rails-developers), a tutorial posted on [Airpair](https://www.airpair.com/) which explains how to integrate [React.js](https://facebook.github.io/react/) into a [Ruby on Rails](http://rubyonrails.org/) application.

--------

I am attempting to recreate the full functionality of the React on Rails app completely in Rails only.

### Getting Started

git clone https://github.com/wolverineks/react-on-rails.git
cd react-on-rails/
bundle
bundle exec rake db:create
bundle exec rake db:migrate
rails s
