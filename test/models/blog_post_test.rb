require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "valid new blog post" do
    blogpost = BlogPost.new
    blogpost.subject = ""
    blogpost.article = ""
    assert_not blogpost.save
  end

end
