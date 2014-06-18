require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "valid comment post" do
  	comment = Comment.new
  	comment.author = ""
  	comment.comment = ""
  	assert_not comment.save
  end

end
