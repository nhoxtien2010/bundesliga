require 'test_helper'

class VongdausControllerTest < ActionController::TestCase
  setup do
    @vongdau = vongdaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vongdaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vongdau" do
    assert_difference('Vongdau.count') do
      post :create, vongdau: { sotrandathidau: @vongdau.sotrandathidau, stt: @vongdau.stt, thoigianbatdau: @vongdau.thoigianbatdau, thoigianketthuc: @vongdau.thoigianketthuc }
    end

    assert_redirected_to vongdau_path(assigns(:vongdau))
  end

  test "should show vongdau" do
    get :show, id: @vongdau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vongdau
    assert_response :success
  end

  test "should update vongdau" do
    patch :update, id: @vongdau, vongdau: { sotrandathidau: @vongdau.sotrandathidau, stt: @vongdau.stt, thoigianbatdau: @vongdau.thoigianbatdau, thoigianketthuc: @vongdau.thoigianketthuc }
    assert_redirected_to vongdau_path(assigns(:vongdau))
  end

  test "should destroy vongdau" do
    assert_difference('Vongdau.count', -1) do
      delete :destroy, id: @vongdau
    end

    assert_redirected_to vongdaus_path
  end
end
