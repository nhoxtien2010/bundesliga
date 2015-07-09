require 'test_helper'

class DoibongsControllerTest < ActionController::TestCase
  setup do
    @doibong = doibongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doibongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doibong" do
    assert_difference('Doibong.count') do
      post :create, doibong: { bacsy: @doibong.bacsy, diachi: @doibong.diachi, dienthoai: @doibong.dienthoai, facebook: @doibong.facebook, fax: @doibong.fax, huanluyenvien_id: @doibong.huanluyenvien_id, mauao: @doibong.mauao, ngaytl: @doibong.ngaytl, nguoidaidientruyenthong: @doibong.nguoidaidientruyenthong, ten: @doibong.ten, website: @doibong.website }
    end

    assert_redirected_to doibong_path(assigns(:doibong))
  end

  test "should show doibong" do
    get :show, id: @doibong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doibong
    assert_response :success
  end

  test "should update doibong" do
    patch :update, id: @doibong, doibong: { bacsy: @doibong.bacsy, diachi: @doibong.diachi, dienthoai: @doibong.dienthoai, facebook: @doibong.facebook, fax: @doibong.fax, huanluyenvien_id: @doibong.huanluyenvien_id, mauao: @doibong.mauao, ngaytl: @doibong.ngaytl, nguoidaidientruyenthong: @doibong.nguoidaidientruyenthong, ten: @doibong.ten, website: @doibong.website }
    assert_redirected_to doibong_path(assigns(:doibong))
  end

  test "should destroy doibong" do
    assert_difference('Doibong.count', -1) do
      delete :destroy, id: @doibong
    end

    assert_redirected_to doibongs_path
  end
end
