
[![Build Status](https://travis-ci.com/notebook/website.svg?branch=master)](https://travis-ci.com/nelsonmfinda/notebook)
[![Maintainability](https://api.codeclimate.com/v1/badges/a287df685c8499df632e/maintainability)](https://codeclimate.com/github/nelsonmfinda/notebook/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/a287df685c8499df632e/test_coverage)](https://codeclimate.com/github/nelsonmfinda/notebook/test_coverage)

# Notebook

This is my side project in Ruby on Rails complete course. 
Do you want to acquire the course? Access the [link below and learn how](https://www.udemy.com/rubyonrails/).

## Development setup

This is a Ruby on Rails (4.2.5) application backed by SQLite3 database. There are two ways to run it locally:
1) Setup a local development environment with the steps below.
2) Use Rbenv to set Ruby 2.4.0 version for this project.

### Things to install

- **Ruby**: We recommend Ruby >= 2.4 . We recommend using [Rbenv](http://rvm.io/)
- **SQLite**: MySQL >= 3 required. Install via your system's package manager

### Install Bundler

Bundle is used to handle the project's Ruby dependancies. You can install it via
```bash
gem install bundler
```
### Setup and Running

```bash
bundle install
bundle exec rake db:create db:migrate db:seed utils:seed
```

To run a webserver, simple run:
```bash
bundle exec rails s
```

Something like this will get a working webserver on http://localhost:3000

