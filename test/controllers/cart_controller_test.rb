require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get clear" do
    get :clear
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
