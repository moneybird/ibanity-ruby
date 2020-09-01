module Ibanity
  module PontoConnect
    class Usage < Ibanity::BaseResource
      def self.find(access_token: nil, organization_id:, month:)
        uri = Ibanity.ponto_connect_api_schema["organizations"]["usage"].sub("{organizationId}", organization_id).sub("{month}", month)
        find_by_uri(uri: uri, customer_access_token: access_token)
      end
    end
  end
end
