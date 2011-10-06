require 'test_helper'

class FooderiesControllerTest < ActionController::TestCase
  setup do
    @foodery = fooderies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fooderies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodery" do
    assert_difference('Foodery.count') do
      post :create, :foodery => @foodery.attributes
    end

    assert_redirected_to foodery_path(assigns(:foodery))
  end

  test "should show foodery" do
    get :show, :id => @foodery.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @foodery.to_param
    assert_response :success
  end

  test "should update foodery" do
    put :update, :id => @foodery.to_param, :foodery => @foodery.attributes
    assert_redirected_to foodery_path(assigns(:foodery))
  end

  test "should destroy foodery" do
    assert_difference('Foodery.count', -1) do
      delete :destroy, :id => @foodery.to_param
    end

    assert_redirected_to fooderies_path
  end
end
