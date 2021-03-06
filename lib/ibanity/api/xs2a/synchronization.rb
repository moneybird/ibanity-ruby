module Ibanity
  module Xs2a
    class Synchronization < Ibanity::BaseResource
      def self.create(customer_access_token:, **attributes)
        uri = Ibanity.xs2a_api_schema["customer"]["synchronizations"]
          .sub("{synchronizationId}", "")
        create_by_uri(uri: uri, resource_type: "synchronization", attributes: attributes, customer_access_token: customer_access_token)
      end

      def self.find(id:, customer_access_token:)
        uri = Ibanity.xs2a_api_schema["customer"]["synchronizations"]
          .sub("{synchronizationId}", id)
        find_by_uri(uri: uri, customer_access_token: customer_access_token)
      end
    end
  end
end
