require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get practice1" do
    get :practice1
    assert_response :success
  end

  test "should get practice2" do
    get :practice2
    assert_response :success
  end

end
