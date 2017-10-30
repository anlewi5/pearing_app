## Pearing Application

## About

This is a pairing application done as part of the [Rails Miniproject for Turing](http://backend.turing.io/module2/projects/mini-project). The purpose of this application is to assist students at [Turing School of Software and Design](https://www.turing.io/) set up [pairing](https://www.versionone.com/agile-101/agile-software-programming-best-practices/pair-programming/) sessions.

This application has been deployed with Heroku and can be found [here](https://pearing-pairing.herokuapp.com).

## Getting Started

This project uses the Ruby on Rails framework, which can be installed from [here](http://installrails.com/). 
[Bundler](http://bundler.io/) is used to install the gems needed for this application.

In order to run this appication in the development environment, perform the following in the CLI:

```
bundle install
rake db:create db:migrate db:seed
```

In order to spin-up the server, run: `rails s`

## Testing
[Rspec-Rails](https://github.com/rspec/rspec-rails) is used for testing with [Capybara](https://github.com/teamcapybara/capybara) for feature tests. 
[Factory_Bot](https://github.com/thoughtbot/factory_bot) is used to create test data.

In order to run tests, perform the following:

`rake db:test:prepare`

`rspec`

[Launchy](https://github.com/copiousfreetime/launchy) will allow you to run `save_and_open_page` in any feature test in order to view an unstyled instance of the specific page when rspec is run.
