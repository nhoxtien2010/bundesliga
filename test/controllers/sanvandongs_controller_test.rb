require 'test_helper'

class SanvandongsControllerTest < ActionController::TestCase
  setup do
    @sanvandong = sanvandongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanvandongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sanvandong" do
    assert_difference('Sanvandong.count') do
      post :create, sanvandong: { chitietthongtin: @sanvandong.chitietthongtin, diachi: @sanvandong.diachi, doibong_id: @sanvandong.doibong_id, hinanh1: @sanvandong.hinanh1, hinhanh2: @sanvandong.hinhanh2, hinhanh: @sanvandong.hinhanh, soghe: @sanvandong.soghe, ten: @sanvandong.ten, thanhlap: @sanvandong.thanhlap, thongtin: @sanvandong.thongtin, ve: @sanvandong.ve }
    end

    assert_redirected_to sanvandong_path(assigns(:sanvandong))
  end

  test "should show sanvandong" do
    get :show, id: @sanvandong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sanvandong
    assert_response :success
  end

  test "should update sanvandong" do
    patch :update, id: @sanvandong, sanvandong: { chitietthongtin: @sanvandong.chitietthongtin, diachi: @sanvandong.diachi, doibong_id: @sanvandong.doibong_id, hinanh1: @sanvandong.hinanh1, hinhanh2: @sanvandong.hinhanh2, hinhanh: @sanvandong.hinhanh, soghe: @sanvandong.soghe, ten: @sanvandong.ten, thanhlap: @sanvandong.thanhlap, thongtin: @sanvandong.thongtin, ve: @sanvandong.ve }
    assert_redirected_to sanvandong_path(assigns(:sanvandong))
  end

  test "should destroy sanvandong" do
    assert_difference('Sanvandong.count', -1) do
      delete :destroy, id: @sanvandong
    end

    assert_redirected_to sanvandongs_path
  end
end
