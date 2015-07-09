require 'test_helper'

class PhamloisControllerTest < ActionController::TestCase
  setup do
    @phamloi = phamlois(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phamlois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phamloi" do
    assert_difference('Phamloi.count') do
      post :create, phamloi: { cauthu_id: @phamloi.cauthu_id, chitiettrandau_id: @phamloi.chitiettrandau_id, thephat_id: @phamloi.thephat_id, thoigian: @phamloi.thoigian }
    end

    assert_redirected_to phamloi_path(assigns(:phamloi))
  end

  test "should show phamloi" do
    get :show, id: @phamloi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phamloi
    assert_response :success
  end

  test "should update phamloi" do
    patch :update, id: @phamloi, phamloi: { cauthu_id: @phamloi.cauthu_id, chitiettrandau_id: @phamloi.chitiettrandau_id, thephat_id: @phamloi.thephat_id, thoigian: @phamloi.thoigian }
    assert_redirected_to phamloi_path(assigns(:phamloi))
  end

  test "should destroy phamloi" do
    assert_difference('Phamloi.count', -1) do
      delete :destroy, id: @phamloi
    end

    assert_redirected_to phamlois_path
  end
end
