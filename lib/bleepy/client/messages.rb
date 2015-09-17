module Bleepy
  class Client

    module Messages
      def messages
        request = get('messages')
        return request.body['result']['entry'] if request.status == 200
      end

      def get_message(oid)
        request = get("messages/#{oid}")
        return request.body['entry'] if request.status == 200
      end

      def send_message(options = {})
        request = post('messages', body(options))
        return nil unless request.status == 201
        request['location'].gsub(Bleepy::Helpers::BASE_URL + 'messages/', '')
      end

      private

      def body(options)
        {
          'entry' => {
            'recipients' => [
              { 'value' => "tel:+55#{options.fetch(:recipient)}" }
            ],
            'body' => options.fetch(:body),
            'type' => 'sms',
            'ackUri' => Bleepy.callback_url,
            'wallet' => options.fetch(:wallet_id, nil)
          }
        }
      end
    end

  end
end
