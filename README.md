## Pearing Application

## About

This is a pairing application done as part of the [Rails Miniproject for Turing](http://backend.turing.io/module2/projects/mini-project). The purpose of this application is to assist students at [Turing School of Software and Design](https://www.turing.io/) set up [pairing](https://www.versionone.com/agile-101/agile-software-programming-best-practices/pair-programming/) sessions.

This application has been deployed with Heroku and can be found [here](https://pearing-pairing.herokuapp.com).

## Getting Started

In order to run this appication in the development environment, perform the following in the CLI:

```
bundle install
rake db:create db:migrate db:seed
```

In order to spin-up the server, run: `rails s`

## Testing

In order to run tests, perform the following:

`rake db:test:prepare`
`rspec`
