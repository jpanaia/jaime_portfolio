require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get user_params" do
    get :user_params
    assert_response :success
  end

end
