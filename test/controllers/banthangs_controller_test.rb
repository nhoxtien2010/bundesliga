require 'test_helper'

class BanthangsControllerTest < ActionController::TestCase
  setup do
    @banthang = banthangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banthangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banthang" do
    assert_difference('Banthang.count') do
      post :create, banthang: { cauthu_id: @banthang.cauthu_id, chitiettrandau_id: @banthang.chitiettrandau_id, thoigian: @banthang.thoigian }
    end

    assert_redirected_to banthang_path(assigns(:banthang))
  end

  test "should show banthang" do
    get :show, id: @banthang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banthang
    assert_response :success
  end

  test "should update banthang" do
    patch :update, id: @banthang, banthang: { cauthu_id: @banthang.cauthu_id, chitiettrandau_id: @banthang.chitiettrandau_id, thoigian: @banthang.thoigian }
    assert_redirected_to banthang_path(assigns(:banthang))
  end

  test "should destroy banthang" do
    assert_difference('Banthang.count', -1) do
      delete :destroy, id: @banthang
    end

    assert_redirected_to banthangs_path
  end
end
