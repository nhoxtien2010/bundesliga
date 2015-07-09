require 'test_helper'

class ChitietbxhsControllerTest < ActionController::TestCase
  setup do
    @chitietbxh = chitietbxhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chitietbxhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chitietbxh" do
    assert_difference('Chitietbxh.count') do
      post :create, chitietbxh: { bangxephang_id: @chitietbxh.bangxephang_id, diem: @chitietbxh.diem, doibong_id: @chitietbxh.doibong_id, hieuso: @chitietbxh.hieuso, lenxuonghang_id: @chitietbxh.lenxuonghang_id, sotranghoa: @chitietbxh.sotranghoa, sotrangthua: @chitietbxh.sotrangthua, sotranthang: @chitietbxh.sotranthang, sotranthidau: @chitietbxh.sotranthidau, thuhang: @chitietbxh.thuhang, tongsobanthang: @chitietbxh.tongsobanthang }
    end

    assert_redirected_to chitietbxh_path(assigns(:chitietbxh))
  end

  test "should show chitietbxh" do
    get :show, id: @chitietbxh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chitietbxh
    assert_response :success
  end

  test "should update chitietbxh" do
    patch :update, id: @chitietbxh, chitietbxh: { bangxephang_id: @chitietbxh.bangxephang_id, diem: @chitietbxh.diem, doibong_id: @chitietbxh.doibong_id, hieuso: @chitietbxh.hieuso, lenxuonghang_id: @chitietbxh.lenxuonghang_id, sotranghoa: @chitietbxh.sotranghoa, sotrangthua: @chitietbxh.sotrangthua, sotranthang: @chitietbxh.sotranthang, sotranthidau: @chitietbxh.sotranthidau, thuhang: @chitietbxh.thuhang, tongsobanthang: @chitietbxh.tongsobanthang }
    assert_redirected_to chitietbxh_path(assigns(:chitietbxh))
  end

  test "should destroy chitietbxh" do
    assert_difference('Chitietbxh.count', -1) do
      delete :destroy, id: @chitietbxh
    end

    assert_redirected_to chitietbxhs_path
  end
end
