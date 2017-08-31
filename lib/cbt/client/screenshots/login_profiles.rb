module Cbt
  class Client
    module Screenshots
      module LoginProfiles
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
end
