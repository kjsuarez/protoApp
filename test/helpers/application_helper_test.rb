require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
		assert_equal full_title, "protoApp"
    	assert_equal full_title("Help"), "protoApp | Help"
	end
end