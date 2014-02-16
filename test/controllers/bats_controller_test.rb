require 'test_helper'

class BatsControllerTest < ActionController::TestCase
  setup do
    @bat = bats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bat" do
    assert_difference('Bat.count') do
      post :create, bat: { manufacturer_id: @bat.manufacturer_id, name: @bat.name }
    end

    assert_redirected_to bat_path(assigns(:bat))
  end

  test "should show bat" do
    get :show, id: @bat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bat
    assert_response :success
  end

  test "should update bat" do
    patch :update, id: @bat, bat: { manufacturer_id: @bat.manufacturer_id, name: @bat.name }
    assert_redirected_to bat_path(assigns(:bat))
  end

  test "should destroy bat" do
    assert_difference('Bat.count', -1) do
      delete :destroy, id: @bat
    end

    assert_redirected_to bats_path
  end
end
