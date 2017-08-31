module Cbt
  class Client
    module Screenshots
      module SeleniumScripts
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
      end
    end
  end
end
