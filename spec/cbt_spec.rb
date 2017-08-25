require 'spec_helper'

RSpec.describe Cbt do
  it 'should have a version number' do
    expect(Cbt::VERSION).not_to be_nil
  end
end
