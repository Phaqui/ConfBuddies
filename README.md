# ConfBuddies
An app to help you find and meetup with your buddies at conferences.

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Development Environment Setup (new devs, start here!)
This application has a development environment that supports docker. Make sure your development
system has `docker` (and `docker compose`) installed. Consult your system's guides on how to set it up for your system.

1: Run `docker compose up -d` to download, build, and launch the application through docker magic.
After some time it should be available on `localhost:3000`.

2: (Initial setup) Create the database with
`docker compose run --rm web bundle exec rake db:create`.

3: (Initial setup) Run database migrations with
`docker compose run --rm web bundle exec rake db:migrate`.
