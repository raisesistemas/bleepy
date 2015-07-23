require 'faraday'
require 'faraday_middleware'
require 'simple_oauth'

module Bleepy
  class << self

    attr_accessor(
      :consumer_key,
      :consumer_secret,
      :token_key,
      :token_secret,
      :callback_url
    )

    def configure
      yield self
      true
    end

  end

  autoload :Client, 'bleepy/client'
  autoload :Request, 'bleepy/request'
  autoload :Version, 'bleepy/version'
end
