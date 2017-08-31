module Cbt
  class Client
    module Screenshots
      module BrowserLists
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
      end
    end
  end
end
