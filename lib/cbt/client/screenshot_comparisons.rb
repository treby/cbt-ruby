module Cbt
  class Client
    module ScreenshotComparisons
      def compare_full_screenshot(target_screenshot_test_id, target_version_id, base_version_id, options = {})
        connection.get("screenshots/#{target_screenshot_test_id}/#{target_version_id}/comparison/parallel/#{base_version_id}", options)
      end
    end
  end
end
