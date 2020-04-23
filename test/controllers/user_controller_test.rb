require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_new_url
    assert_response :success
  end

  test "should get login_form" do
    get user_login_form_url
    assert_response :success
  end

end
