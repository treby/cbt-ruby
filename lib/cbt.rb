require 'faraday'
require 'faraday_middleware'

require "cbt/version"
require "cbt/client"

module Cbt
  def self.api_endpoint
    'https://crossbrowsertesting.com/api/v3/'
  end
end
