# LoanCreatorWeb

`loan_creator_web` gem intends to provide a testing tool to visualise generations of loan timetables by the gem [loan_creator](https://github.com/CapSens/loan-creator).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'loan_creator_web'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install loan_creator_web

## Usage

You can mount a route in your Ruby on Rails application:

```ruby
# routes.rb

mount LoanCreatorWeb::App => '/loan-creator'

```

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `rake config.ru` to run the tests. 

You can now check the form on `localhost:9292`.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CapSens/loan_creator_web. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LoanCreatorWeb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/CapSens/loan_creator_web/blob/master/CODE_OF_CONDUCT.md).
