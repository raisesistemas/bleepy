require 'bundler/setup'
require 'bleepy'
require 'webmock/rspec'
require 'vcr_setup'
Bundler.setup
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.color = true
  config.tty   = true
  config.order = 'random'
end

Bleepy.configure do |config|
  config.consumer_key = 'Bw5pEia7'
  config.consumer_secret = 'TqIcFRlr'
  config.token_key = 'Pz5333YImqBynf7Nh7/K9SrMLKs='
  config.token_secret = 'Ff6UbnOULG2rCPvWcs4yVFF8t9E='
  config.callback_url = 'http://4f2ba35c.ngrok.io/messages'
end
