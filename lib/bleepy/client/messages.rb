module Bleepy
  class Client

    module Messages
      def messages
        get('messages')
      end

      def send_message(options = {})
        post('messages', body(options))
      end

      private

      def body(options)
        {
          'entry' => {
            'recipients' => [{'value' => "tel:+55#{options.fetch(:recipient)}"}],
            'body' => options.fetch(:body),
            'type' => 'sms',
            'ackUri' => Bleepy.callback_url
          }
        }
      end
    end

  end
end
