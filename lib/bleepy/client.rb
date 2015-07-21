require 'bleepy/client/domains'
require 'bleepy/client/messages'
require 'bleepy/client/users'
require 'bleepy/client/wallets'

module Bleepy
  class Client

    include Bleepy::Client::Domains
    include Bleepy::Client::Messages
    include Bleepy::Client::Users
    include Bleepy::Client::Wallets

    def connection
      @connection ||= Bleepy::Request.new.connection
    end

  end
end