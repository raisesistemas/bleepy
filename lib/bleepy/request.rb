module Bleepy
  class Request

    BASE_URL = 'https://api.take.io/rest/1.0/'

    def connection
      conexion = Faraday.new BASE_URL do |conn|
        conn.request :oauth, oauth_params
        conn.request :json
        conn.response :json, content_type: /\bjson$/
        conn.adapter Faraday.default_adapter
      end

      puts conexion
      conexion
    end

    private

    def oauth_params
      {
        consumer_key: Bleepy.consumer_key,
        consumer_secret: Bleepy.consumer_secret,
        token: Bleepy.token_key,
        token_secret: Bleepy.token_secret
      }
    end

  end
end