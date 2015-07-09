require 'test_helper'

class LenxuonghangsControllerTest < ActionController::TestCase
  setup do
    @lenxuonghang = lenxuonghangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lenxuonghangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lenxuonghang" do
    assert_difference('Lenxuonghang.count') do
      post :create, lenxuonghang: { ten: @lenxuonghang.ten, thongtin: @lenxuonghang.thongtin }
    end

    assert_redirected_to lenxuonghang_path(assigns(:lenxuonghang))
  end

  test "should show lenxuonghang" do
    get :show, id: @lenxuonghang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lenxuonghang
    assert_response :success
  end

  test "should update lenxuonghang" do
    patch :update, id: @lenxuonghang, lenxuonghang: { ten: @lenxuonghang.ten, thongtin: @lenxuonghang.thongtin }
    assert_redirected_to lenxuonghang_path(assigns(:lenxuonghang))
  end

  test "should destroy lenxuonghang" do
    assert_difference('Lenxuonghang.count', -1) do
      delete :destroy, id: @lenxuonghang
    end

    assert_redirected_to lenxuonghangs_path
  end
end
