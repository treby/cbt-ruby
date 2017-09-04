# CBT - CrossBrowserTesting API wrapper for ruby.

A crossbrowsertesting wrapper for ruby. Now, we support only screenshot API.

From [Crossbrowsertesting.com API Overview](https://crossbrowsertesting.com/apidocs/v3/)

- :no_good_woman: [Live Tests](https://crossbrowsertesting.com/apidocs/v3/livetests.html)
- :no_good_woman: [Selenium Tests](https://crossbrowsertesting.com/apidocs/v3/selenium.html)
- :ok_woman: [Screenshots](https://crossbrowsertesting.com/apidocs/v3/screenshots.html)
- :ok_woman: [Screenshot Comparisons](https://crossbrowsertesting.com/apidocs/v3/screenshot-comparisons.html)
- :no_good_woman: [Local Connections](https://crossbrowsertesting.com/apidocs/v3/tunnels.html)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cbt', github: 'treby/cbt-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cbt-ruby

## Usage

```ruby
require 'cbt'

client = Cbt::Client.new(user: '<Your username>', pass: '<Your password>')

# Get screenshot history
# https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots
client.screenshots

# You can specify parameters
client.screenshots(archived: false)
```

**Notice** : This gem returns raw [Faraday](https://github.com/lostisland/faraday)'s response (`Faraday::Response`) and response body will be handled by [`FaradayMiddleware::ParseJson`](https://github.com/lostisland/faraday_middleware).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/treby/cbt-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
