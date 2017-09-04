require 'cbt'
require 'rspec'
require 'webmock/rspec'

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end

def json_response(file)
  {
    body: fixture(file),
    headers: {
      content_type: 'application/json; charset=utf-8'
    }
  }
end

def fixture(file)
  File.new(File.expand_path("../fixtures/#{file}", __FILE__))
end

def cbt_url(path)
  "#{Cbt.api_endpoint}#{path}"
end
