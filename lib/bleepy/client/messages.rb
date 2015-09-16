module Bleepy
  class Client

    module Messages
      def messages
        get('messages').body['result']['entry']
      end

      def get_message(oid)
        get("messages/#{oid}").body
      end

      def send_message(options = {})
        message = post('messages', body(options))
        return nil unless message.status == 201
        message['location'].gsub(Bleepy::Helpers::BASE_URL + 'messages/', '')
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
