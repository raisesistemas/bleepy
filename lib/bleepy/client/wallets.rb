module Bleepy
  class Client

    module Wallets
      def wallets
        connection.get do |request|
          request.url 'billing/wallets'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
        end
      end

      def create_wallet(options)
        connection.post do |request|
          request.url 'billing/wallets'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
          request.body = {
            'name' => options.fetch(:name),
            'wallet' => 'df501dda-afc7-4fa1-8043-02c7c7dc9794',
            'owner' => 'ce5803ab-bb25-4503-81b9-991a71bd7dfc',
            'plan' => '6a640f6d-4ad2-4d38-874f-f6e6aa77b01a',
            'domain' => '8f4abddd-502f-4d24-a041-cba14f638838'
          }
        end
      end

      def find_wallet

      end

      def master_wallet
        record = connection.get do |request|
          request.url 'billing/wallets/df501dda-afc7-4fa1-8043-02c7c7dc9794'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
        end

        record.body['entry']
      end
    end

  end
end
