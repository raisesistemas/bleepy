require 'bleepy/authorization_request'
require 'bleepy/configuration'
require 'bleepy/test'
require 'faraday'
require 'faraday_middleware'
require 'simple_oauth'

module Bleepy
  autoload :Request, 'bleepy/request'
  autoload :Version, 'bleepy/version'

  extend Configuration

  define_setting :consumer_key, 'Bw5pEia7'
  define_setting :consumer_secret, 'TqIcFRlr'
  define_setting :token_key, 'Pz5333YImqBynf7Nh7/K9SrMLKs='
  define_setting :token_secret, 'Ff6UbnOULG2rCPvWcs4yVFF8t9E='
end
