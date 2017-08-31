module Cbt
  class Client
    module Screenshots
      # List Screenshot Browsers
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_browsers
      def screenshots_browsers(params = {})
        connection.get('screenshots/browsers', params)
      end

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

      # List All Selenium Scripts
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_seleniumscripts
      def screenshots_selenium_scripts(params = {})
        connection.get('screenshots/seleniumscripts', params)
      end

      # Create Selenium Script
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_seleniumscripts
      def create_screenshots_selenium_script(params = {})
        connection.post('screenshots/seleniumscripts', params)
      end

      # Delete Selenium Script
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/delete_screenshots_seleniumscripts_script_name
      def destroy_screenshots_selenium_script(script_name, params = {})
        connection.delete("screenshots/seleniumscripts/#{script_name}", params)
      end

      # Get Selenium Script
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_seleniumscripts_script_name
      def screenshots_selenium_script(script_name, params = {})
        connection.get("screenshots/seleniumscripts/#{script_name}", params)
      end

      # Update Selenium Script
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_seleniumscripts_script_name
      def update_screenshots_selenium_script(script_name, params = {})
        connection.put("screenshots/seleniumscripts/#{script_name}", params)
      end

      # Get Saved Browser Lists
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_browserlists
      def screenshots_browser_lists(params = {})
        connection.get('screenshots/browserlists', params)
      end

      # Create New Browser List
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_browserlists
      def create_screenshots_browser_list(params = {})
        connection.post('screenshots/browserlists', params)
      end

      # Set Default Browser List
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_browserlists
      def set_default_screenshots_browser_list(params = {})
        connection.put('screenshots/browserlists', params.merge(action: 'set_default'))
      end

      # Get Browser List Details
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_browserlists_browser_list_name
      def screenshots_browser_list(browser_list_name, params = {})
        connection.get("screenshots/browserlists/#{browser_list_name}", params)
      end

      # Update Browser List
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_browserlists_browser_list_name
      def update_browser_list(browser_list_name, params = {})
        connection.put("screenshots/browserlists/#{browser_list_name}", params)
      end

      # Delete Browser List
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/delete_screenshots_browserlists_browser_list_name
      def destroy_screenshots_browser_list(browser_list_name, params = {})
        connection.delete("screenshots/browserlists/#{browser_list_name}", params)
      end

      # Get Saved Login Profiles
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_loginprofiles
      def screenshots_login_profiles(params = {})
        connection.get('screenshots/loginprofiles', params)
      end

      # Create Login Profile
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/post_screenshots_loginprofiles
      def create_screenshots_login_profile(params = {})
        connection.post('screenshots/loginprofiles', params)
      end

      # Get Login Profile Details
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_loginprofiles_profile_name
      def screenshots_login_profile(login_profile_name, params = {})
        connection.get("screenshots/loginprofiles#{login_profile_name}", params)
      end

      # Update Login Profile
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/put_screenshots_loginprofiles_profile_name
      def update_screenshots_login_profile(login_profile_name, params = {})
        connection.put("screenshots/loginprofiles#{login_profile_name}", params)
      end

      # Delete Browser List
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/delete_screenshots_loginprofiles_profile_name
      def destroy_screenshots_login_profile(login_profile_name, params = {})
        connection.delete("screenshots/loginprofiles/#{login_profile_name}", params)
      end
    end
  end
end
