module Cbt
  class Client
    module ScreenshotComparisons
      # Compare Single Screenshot
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshot-comparisons.html#!/default/get_screenshots_target_screenshot_test_id_target_version_id_target_result_id_comparison_base_result_id
      def compare_single_screenshot(target_screenshot_test_id, target_version_id, target_result_id, base_result_id, options = {})
        connection.get("screenshots/#{target_screenshot_test_id}/#{target_version_id}/#{target_result_id}/comparison/#{base_version_id}", options)
      end

      # Compare Full Screenshot Test
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshot-comparisons.html#!/default/get_screenshots_target_screenshot_test_id_target_version_id_comparison_base_result_id
      def compare_full_screenshot(target_screenshot_test_id, target_version_id, base_result_id, options = {})
        connection.get("screenshots/#{target_screenshot_test_id}/#{target_version_id}/comparison/#{base_result_id}", options)
      end

      # Compare Screenshot Test Version
      #
      # @see https://crossbrowsertesting.com/apidocs/v3/screenshot-comparisons.html#!/default/get_screenshots_target_screenshot_test_id_target_version_id_comparison_parallel_base_version_id
      def compare_screenshot_test_versions(target_screenshot_test_id, target_version_id, base_version_id, options = {})
        connection.get("screenshots/#{target_screenshot_test_id}/#{target_version_id}/comparison/parallel/#{base_version_id}", options)
      end
    end
  end
end
