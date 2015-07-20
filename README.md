# Bleepy

TODO: Write a gem description

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

For Rails applications add a bleepy.rb configuration file at config/initializers

```ruby

Bleepy.configuration do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.token_key = ENV['TOKEN_KEY']
  config.token_secret = ENV['TOKEN_SECRET']
end

```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/bleepy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
