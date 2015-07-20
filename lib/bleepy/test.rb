module Bleepy
  class Test

    def authorize_token
      response = connection.get() do |request|
        request.url 'sso/oauth/authorize'
        request.headers['User-Agent'] = 'Atos6'
        request.headers['Content-Type'] = 'application/json'
      end
      response.body
    end

    def wallets
      authorize_token
      response = connection.get() do |request|
        request.url 'billing/wallets'
        request.headers['User-Agent'] = 'Atos6'
        request.headers['Content-Type'] = 'application/json'
      end
      response.body
    end

    private

    def connection
      Bleepy::Request.new.connection
    end

  end
end