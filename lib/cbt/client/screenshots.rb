require 'cbt/client/screenshots/browsers'
require 'cbt/client/screenshots/browser_lists'
require 'cbt/client/screenshots/login_profiles'
require 'cbt/client/screenshots/selenium_scripts'
require 'cbt/client/screenshots/comparisons'

module Cbt
  class Client
    module Screenshots
      include Cbt::Client::Screenshots::Browsers
      include Cbt::Client::Screenshots::BrowserLists
      include Cbt::Client::Screenshots::LoginProfiles
      include Cbt::Client::Screenshots::SeleniumScripts
      include Cbt::Client::Screenshots::Comparisons

      # List Screenshot History
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots
      def screenshots(params = {})
        connection.get('screenshots', params)
      end

      # Run New Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots
      def create_screenshot(params = {})
        connection.post('screenshots', params)
      end

      # Show Screenshot Test Info
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_screenshot_test_id
      def screenshot(screenshot_test_id, params = {})
        connection.get("screenshots/#{screenshot_test_id}", params)
      end

      # Archive Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_screenshot_test_id
      def archive_screenshot(screenshot_test_id, params = {})
        connection.put("screenshots/#{screenshot_test_id}", params)
      end

      # List Screenshot Test Versions
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_screenshot_test_id_versions
      def screenshot_versions(screenshot_test_id, params = {})
        connection.get("screenshots/#{screenshot_test_id}/versions", params)
      end

      # Show Screenshot Test Info
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_screenshot_test_id_version_id
      def screenshot_version(screenshot_test_id, version_id, params = {})
        connection.get("screenshots/#{screenshot_test_id}/#{version_id}", params)
      end

      # Repeat Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_screenshot_test_id_version_id
      def create_screenshot_version(screenshot_test_id, version_id, params = {})
        connection.post("screenshots/#{screenshot_test_id}/#{version_id}", params)
      end

      # Set Screenshot Test Description
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_screenshot_test_id_version_id
      def update_screenshot_version_description(screenshot_test_id, version_id, description, params = {})
        connection.put("screenshots/#{screenshot_test_id}/#{version_id}", params.merge(action: 'set_description', description: description))
      end

      # Cancel Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/delete_screenshots_screenshot_test_id_version_id
      def destroy_screenshot_version(screenshot_test_id, version_id, params = {})
        connection.delete("screenshots/#{screenshot_test_id}/#{version_id}", params)
      end

      # Show Screenshot Test Info
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_screenshot_test_id_version_id_result_id
      def screenshot_version_result(screenshot_test_id, version_id, result_id, params = {})
        connection.get("screenshots/#{screenshot_test_id}/#{version_id}/#{result_id}", params)
      end

      # Retake Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_screenshot_test_id_version_id_result_id
      def create_screenshot_version_result(screenshot_test_id, version_id, result_id, params = {})
        connection.post("screenshots/#{screenshot_test_id}/#{version_id}/#{result_id}", params)
      end

      # Set Screenshot Result Description
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_screenshot_test_id_version_id_result_id
      def update_screenshot_version_result_description(screenshot_test_id, version_id, result_id, description, params = {})
        connection.put("screenshots/#{screenshot_test_id}/#{version_id}/#{result_id}", params.merge(description: description))
      end

      # Cancel Screenshot Result
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/delete_screenshots_screenshot_test_id_version_id_result_id
      def destroy_screenshot_version_result(screenshot_test_id, version_id, result_id, params = {})
        connection.delete("/screenshots/#{screenshot_test_id}/#{version_id}/#{result_id}", params)
      end
    end
  end
end
