require 'test_helper'

class BangxephangsControllerTest < ActionController::TestCase
  setup do
    @bangxephang = bangxephangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bangxephangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bangxephang" do
    assert_difference('Bangxephang.count') do
      post :create, bangxephang: { vondau_id: @bangxephang.vondau_id }
    end

    assert_redirected_to bangxephang_path(assigns(:bangxephang))
  end

  test "should show bangxephang" do
    get :show, id: @bangxephang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bangxephang
    assert_response :success
  end

  test "should update bangxephang" do
    patch :update, id: @bangxephang, bangxephang: { vondau_id: @bangxephang.vondau_id }
    assert_redirected_to bangxephang_path(assigns(:bangxephang))
  end

  test "should destroy bangxephang" do
    assert_difference('Bangxephang.count', -1) do
      delete :destroy, id: @bangxephang
    end

    assert_redirected_to bangxephangs_path
  end
end
