require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	test "layout links" do
		get root_path
		assert_template 'pages/home'
		assert_select "a[href=?]", pages_help_path
		assert_select "a[href=?]", pages_index_path
	end

	test "help links" do
		get pages_help_path
		assert_template 'pages/help'
		assert_select "a[href=?]", root_path
		assert_select "a[href=?]", pages_index_path
	end

	test "index links" do
		get pages_index_path
		assert_template 'pages/index'
		assert_select "a[href=?]", root_path
		assert_select "a[href=?]", pages_help_path
	end

end

