# michellebonat.com

This is the personal website for Michelle Bonat, built by her (me). 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

- Postgres (OSX users can run `brew install postgresql`)
- bundler (`gem install bundler`)
- Ruby 2.2.2
- Any environment variables you prefer to setup and use

### Installing

- `bundle install`
- (start your Postgres db)
- `rake db:create` (TODO: create seed data)
- (remember to migrate which in a Rails 4 app is `rake db:migrate`)

To create an initial admin user, fire up `rails c` and do the following:

    u = User.create(username: "Whatever", password: "foo123456", email: "me@domain.org", password_confirmation: "foo123456")
    u.activate!
    u.is_admin = true
    u.save

### Running the server

- `rails s`

## Running the tests

There are pre-seeded rspec tests. To run these it is 'rspec spec' from your command line. 

### More about the tests

These pre-seeded tests are based on factories for posts and users, and include feature, model, and policy tests. See the RSpec folder for details. 

## Deployment

Since this is a Ruby application, deploying it to Heroku is easy. 
* [Getting Started on Heroku with Ruby](https://devcenter.heroku.com/articles/getting-started-with-ruby#deploy-the-app) - Here is a good step by step from Heroku.

## Built With

- Ruby
- Rails 4

And the usual suspects including:
- Html
- CSS
- Javascript

## Contributing

This was built by Michelle Bonat. It's not currently open for contributions, but I would love to hear any comments and suggestions about how you have modified this code. 
Contact me through the methods noted below. 

## Authors

* **Michelle Bonat** - *Initial work* - Contact me through [michellebonat.com](http://michellebonat.com/) or on [GitHub](https://github.com/michellebonat) 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details




