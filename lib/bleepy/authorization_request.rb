module Bleepy
  class AuthorizationRequest

    BASE_URL = 'https://api.take.io/rest/1.0/'

    def request
      response = connection.post() do |request|
        request.url 'sso/oauth/requestToken'
        request.headers['User-Agent'] = 'Atos6'
      end
      response.body
    end

    def connection
      conexion = Faraday.new BASE_URL do |conn|
        conn.request :oauth, oauth_params
        conn.request :url_encoded
        conn.adapter Faraday.default_adapter
      end

      puts conexion.inspect
      conexion
    end

    private

    def oauth_params
      {
        consumer_key: Bleepy.consumer_key,
        consumer_secret: Bleepy.consumer_secret
      }
    end

  end
end