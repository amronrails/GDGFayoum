require 'test_helper'

class PublicControllerTest < ActionController::TestCase
  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
