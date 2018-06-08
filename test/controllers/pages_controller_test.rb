require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

	test "should get index" do
		get pages_index_path
		assert_response :success
	end

	test "should get home" do
		get root_path
		assert_response :success
	end

	test "should get help" do
		get pages_help_path
		assert_response :success
	end
	
end
