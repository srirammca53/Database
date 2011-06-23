require 'test_helper'

class AnimationsControllerTest < ActionController::TestCase
  setup do
    @animation = animations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animation" do
    assert_difference('Animation.count') do
      post :create, :animation => @animation.attributes
    end

    assert_redirected_to animation_path(assigns(:animation))
  end

  test "should show animation" do
    get :show, :id => @animation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @animation.to_param
    assert_response :success
  end

  test "should update animation" do
    put :update, :id => @animation.to_param, :animation => @animation.attributes
    assert_redirected_to animation_path(assigns(:animation))
  end

  test "should destroy animation" do
    assert_difference('Animation.count', -1) do
      delete :destroy, :id => @animation.to_param
    end

    assert_redirected_to animations_path
  end
end
