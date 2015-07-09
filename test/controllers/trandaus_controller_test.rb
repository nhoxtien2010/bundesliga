require 'test_helper'

class TrandausControllerTest < ActionController::TestCase
  setup do
    @trandau = trandaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trandaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trandau" do
    assert_difference('Trandau.count') do
      post :create, trandau: { banthangdoikhach: @trandau.banthangdoikhach, banthangdoinha: @trandau.banthangdoinha, doikhach_id: @trandau.doikhach_id, doinha_id: @trandau.doinha_id, sanvandong_id: @trandau.sanvandong_id, thoigian: @trandau.thoigian, vongdau_id: @trandau.vongdau_id }
    end

    assert_redirected_to trandau_path(assigns(:trandau))
  end

  test "should show trandau" do
    get :show, id: @trandau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trandau
    assert_response :success
  end

  test "should update trandau" do
    patch :update, id: @trandau, trandau: { banthangdoikhach: @trandau.banthangdoikhach, banthangdoinha: @trandau.banthangdoinha, doikhach_id: @trandau.doikhach_id, doinha_id: @trandau.doinha_id, sanvandong_id: @trandau.sanvandong_id, thoigian: @trandau.thoigian, vongdau_id: @trandau.vongdau_id }
    assert_redirected_to trandau_path(assigns(:trandau))
  end

  test "should destroy trandau" do
    assert_difference('Trandau.count', -1) do
      delete :destroy, id: @trandau
    end

    assert_redirected_to trandaus_path
  end
end
