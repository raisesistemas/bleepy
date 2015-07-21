module Bleepy
  class Client

    module Messages

      def messages
        response = connection.get() do |request|
          request.url 'messages'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
        end
        response.body
      end

      # implementar agendamento
      def send_message(options = {})
        response = connection.post() do |request|
          request.url 'messages'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
          request.body = {
            entry: {
              recipients:[
                options.fetch(:recipients).map {|recipient| {value: "tel:+55#{recipient}"} }
              ],
              body: options.fetch(:body),
              type:"sms",
              ackUri: Bleepy.callback_url
            }
          }
        end
        response.body
      end
    end

  end
end