require 'forwardable'
require 'bleepy/client/messages'

module Bleepy
  class Client

    include Bleepy::Client::Messages
    extend Forwardable

    def initialize
      @request = Bleepy::Request.new
    end

    def_delegators :@request, :get, :post

  end
end
