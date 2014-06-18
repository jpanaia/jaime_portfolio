require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "save new user without email" do
  	user = User.new
  	assert_not user.save, "shouldn't be able to save a user w/o email"
  end

  test "save valid user" do
  	user = User.new
  	user.email = "something@something.com"
  	user.password = "password"
  	assert user.save
  end

  test "password length" do
  	user = User.new
  	user.email = "a@b.com"
  	user.password = "a"
  	assert_not user.save
  end
 
end
