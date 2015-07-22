require 'bleepy'

RSpec.configure do |config|
  config.color = true
  config.tty   = true
  config.order = 'random'
end

Bleepy.configuration do |config|
  config.consumer_key = '1234'
  config.consumer_secret = '5678'
  config.token_key = 'abcd'
  config.token_secret = 'efgh'
end
