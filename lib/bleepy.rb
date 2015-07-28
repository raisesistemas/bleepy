require 'faraday'
require 'faraday_middleware'
require 'simple_oauth'
require 'bleepy/version'

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
  autoload :Helpers, 'bleepy/helpers'
  autoload :Request, 'bleepy/request'
end
