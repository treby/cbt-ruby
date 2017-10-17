require 'cbt/client/screenshots'

module Cbt
  class Client
    include Cbt::Client::Screenshots
    DEFAULT_RETRY_COUNT = 5
    RETRY_INTERVAL = 20

    def initialize(user:, pass:, max_retry_count: DEFAULT_RETRY_COUNT)
      @user = user
      @pass = pass
      @max_retry_count = max_retry_count
    end

    private

    def connection
      @conn ||= Faraday.new(url: Cbt.api_endpoint) do |faraday|
        faraday.request :json
        faraday.request :retry,
          max: @max_retry_count,
          interval: RETRY_INTERVAL,
          # Considering exceptions `:raise_error` (raises Faraday::ClientError)
          exceptions: [Faraday::ClientError],
          retry_if: -> (_, e) { e.response.nil? || e.response[:status] >= 500 }
        faraday.response :raise_error
        faraday.response :json, content_type: 'application/json'
        faraday.adapter Faraday.default_adapter
        faraday.basic_auth(@user, @pass)
      end
    end
  end
end
