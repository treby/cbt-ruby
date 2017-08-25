module Cbt
  class Client
    module Screenshots
      # List Screenshot History
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots
      def screenshots(params = {})
        connection.get('screenshots', params)
      end

      # Show Screenshot Test Info
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_screenshot_test_id
      def screenshot(screenshot_test_id, params = {})
        connection.get("screenshots/#{screenshot_test_id}", params)
      end

      # Run New Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots
      def create_screenshot(params = {})
        connection.post('screenshots', params)
      end

      # Repeat Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_screenshot_test_id_version_id
      def create_screenshot_version(screenshot_test_id, version_id, params = {})
        connection.post("screenshots/#{screenshot_test_id}/#{version_id}", params)
      end

      # Archive Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_screenshot_test_id
      def archive_screenshot(screenshot_test_id, params = {})
        connection.put("screenshots/#{screenshot_test_id}", params)
      end
    end
  end
end
