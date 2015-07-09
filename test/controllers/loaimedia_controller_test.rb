require 'test_helper'

class LoaimediaControllerTest < ActionController::TestCase
  setup do
    @loaimedium = loaimedia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loaimedia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loaimedium" do
    assert_difference('Loaimedium.count') do
      post :create, loaimedium: { ten: @loaimedium.ten }
    end

    assert_redirected_to loaimedium_path(assigns(:loaimedium))
  end

  test "should show loaimedium" do
    get :show, id: @loaimedium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loaimedium
    assert_response :success
  end

  test "should update loaimedium" do
    patch :update, id: @loaimedium, loaimedium: { ten: @loaimedium.ten }
    assert_redirected_to loaimedium_path(assigns(:loaimedium))
  end

  test "should destroy loaimedium" do
    assert_difference('Loaimedium.count', -1) do
      delete :destroy, id: @loaimedium
    end

    assert_redirected_to loaimedia_path
  end
end
