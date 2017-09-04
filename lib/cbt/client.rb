require 'cbt/client/screenshots'

module Cbt
  class Client
    include Cbt::Client::Screenshots

    def initialize(user:, pass:)
      @user = user
      @pass = pass
    end

    private

    def connection
      @conn ||= Faraday.new(url: Cbt.api_endpoint) do |faraday|
        faraday.request :json
        faraday.response :raise_error
        faraday.response :json, content_type: 'application/json'
        faraday.adapter Faraday.default_adapter
        faraday.basic_auth(@user, @pass)
      end
    end
  end
end
