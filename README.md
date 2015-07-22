# Bleepy

Bleepy is a ruby client for take.net API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bleepy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bleepy

## Usage

For Rails applications add bleepy.rb configuration file to config/initializers

```ruby

  Bleepy.configure do |config|
    config.consumer_key = 'consumer_key'
    config.consumer_secret = 'consumer_secret'
    config.token_key = 'token_key'
    config.token_secret = 'token_secret'
    config.callback_url = 'http://app_url/controller'
  end

```


## Contributing

1. Fork it ( https://github.com/raisesistemas/bleepy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
