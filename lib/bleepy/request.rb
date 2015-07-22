module Bleepy
  class Request

    BASE_URL = 'http://api.take.io/rest/1.0/'

    def get(url)
      connection.get do |request|
        request.url url
        request.headers = headers
      end
    end

    def post(url, body)
      connection.post do |request|
        request.url url
        request.headers = headers
        request.body = body
      end
    end

    private

    def connection
      Faraday.new BASE_URL do |conn|
        conn.request :oauth, oauth_params
        conn.request :json
        conn.response :json, content_type: /\bjson$/
        conn.adapter Faraday.default_adapter
      end
    end

    def headers
      {
        'User-Agent' => "Bleepy-#{Bleepy::VERSION}",
        'Content-Type' => 'application/json'
      }
    end

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