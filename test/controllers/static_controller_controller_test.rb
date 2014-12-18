require 'test_helper'

class StaticControllerControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get sites" do
    get :sites
    assert_response :success
  end

end
