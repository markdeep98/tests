require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
	def setup
		@article = Article.new(title: "New article")
	end

  test "should not save article without title" do
  	assert @article.save
  end

  test "should be valid" do
  	assert @article.valid?
  end

  test "title should be present" do
  	@article.title = ""
  	assert_not @article.valid?
  end

  test "title should not be too long" do
  	@article.title = "a" * 51
  	assert_not @article.valid?
  end

  test "title should be unique" do
  	duplicate_title = @article.dup
  	@article.save
  	assert_not duplicate_title.valid?
  end
end
