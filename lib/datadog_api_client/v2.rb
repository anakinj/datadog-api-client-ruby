require_relative 'v2/model_base'

module DatadogAPIClient::V2
  class << self
    def configure(&block)
      DatadogAPIClient.configure(&block)
    end
  end
end
