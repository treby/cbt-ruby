module Cbt
  class Client
    module Screenshots
      module Browsers
        # List Screenshot Browsers
        #
        # @see https://crossbrowsertesting.com/apidocs/v3/screenshots.html#!/default/get_screenshots_browsers
        def screenshots_browsers(params = {})
          connection.get('screenshots/browsers', params)
        end
      end
    end
  end
end
