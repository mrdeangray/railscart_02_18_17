require 'test_helper'

class Gritty2sControllerTest < ActionController::TestCase
  setup do
    @gritty2 = gritty2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gritty2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gritty2" do
    assert_difference('Gritty2.count') do
      post :create, gritty2: { time: @gritty2.time, title: @gritty2.title }
    end

    assert_redirected_to gritty2_path(assigns(:gritty2))
  end

  test "should show gritty2" do
    get :show, id: @gritty2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gritty2
    assert_response :success
  end

  test "should update gritty2" do
    patch :update, id: @gritty2, gritty2: { time: @gritty2.time, title: @gritty2.title }
    assert_redirected_to gritty2_path(assigns(:gritty2))
  end

  test "should destroy gritty2" do
    assert_difference('Gritty2.count', -1) do
      delete :destroy, id: @gritty2
    end

    assert_redirected_to gritty2s_path
  end
end
