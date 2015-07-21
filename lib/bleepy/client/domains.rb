module Bleepy
  class Client

    module Domains
      def core_domain
        record = connection.get do |request|
          request.url 'core/domains/8f4abddd-502f-4d24-a041-cba14f638838'
          request.headers['User-Agent'] = 'Atos6'
          request.headers['Content-Type'] = 'application/json'
        end
        record.body['entry']
      end
    end

  end
end