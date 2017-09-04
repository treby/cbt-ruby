require 'spec_helper'

RSpec.describe Cbt::Client::Screenshots do
  let(:client) { Cbt::Client.new(user: 'user', pass: 'pass') }

  describe '#screenshots' do
    before do
      @request = stub_request(:get, cbt_url('screenshots')).to_return(json_response('screenshots.json'))
    end

    it 'returns screenshot test history', :aggregate_failures do
      response = client.screenshots
      expect(response.body).to be_has_key 'meta'
      expect(response.body['meta']).to be_kind_of Hash
      expect(response.body).to be_has_key 'screenshots'
      expect(response.body['screenshots']).to be_kind_of Array
      assert_requested @request
    end
  end

  describe '#screenshot' do
    let(:screenshot_test_id) { 'show' }
    before do
      @request = stub_request(:get, cbt_url("screenshots/#{screenshot_test_id}")).to_return(json_response("screenshots_#{screenshot_test_id}.json"))
    end
    it 'returns screenshot test info', :aggregate_failures do
      response = client.screenshot(screenshot_test_id)
      expect(response.body).to be_has_key 'screenshot_test_id'
      expect(response.body).to be_has_key 'versions'
      expect(response.body['versions']).to be_kind_of Array
      assert_requested @request
    end
  end

  describe '#create_screenshot' do
    before do
      @request = stub_request(:post, cbt_url('screenshots')).to_return(json_response('create_screenshots.json'))
    end

    it 'returns screenshot test info', :aggregate_failures do
      response = client.create_screenshot
      expect(response.body).to be_has_key 'screenshot_test_id'
      expect(response.body).to be_has_key 'versions'
      expect(response.body['versions']).to be_kind_of Array
      assert_requested @request
    end
  end

  describe '#create_screenshot_version' do
    let(:screenshot_test_id) { 'test' }
    let(:version_id) { 'version' }
    before do
      @request = stub_request(:post, cbt_url("screenshots/#{screenshot_test_id}/#{version_id}")).to_return(json_response("screenshots_#{screenshot_test_id}_#{version_id}.json"))
    end

    it 'returns screenshot test info', :aggregate_failures do
      response = client.create_screenshot_version(screenshot_test_id, version_id)
      expect(response.body).to be_has_key 'screenshot_test_id'
      expect(response.body).to be_has_key 'versions'
      expect(response.body['versions']).to be_kind_of Array
      assert_requested @request
    end
  end

  describe '#compare_screenshot_test_versions' do
    let(:target_screenshot_test_id) { 'target_test' }
    let(:target_version_id) { 'target_version' }
    let(:base_version_id) { 'base_version' }
    before do
      @request = stub_request(:get, cbt_url("screenshots/#{target_screenshot_test_id}/#{target_version_id}/comparison/parallel/#{base_version_id}"))
        .to_return(json_response("screenshot_comparison.json"))
    end

    it 'returns comparison info' do
      response = client.compare_screenshot_test_versions(target_screenshot_test_id, target_version_id, base_version_id)
      expect(response.body).to be_kind_of Array
      assert_requested @request
    end
  end

  describe '#archive_screenshot' do
    let(:screenshot_test_id) { 'test' }
    let(:version_id) { 'version_id' }
    before do
      @request = stub_request(:put, cbt_url("screenshots/#{screenshot_test_id}"))
        .with(body: { action: 'archive', archived: 'true' })
        .to_return(json_response("archive_screenshot.json"))
    end

    it 'returns screenshot test info', :aggregate_failures do
      response = client.archive_screenshot(screenshot_test_id)
      expect(response.body).to be_has_key 'screenshot_test_id'
      expect(response.body).to be_has_key 'versions'
      expect(response.body['versions']).to be_kind_of Array
      assert_requested @request
    end
  end
end
