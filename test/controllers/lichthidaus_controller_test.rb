require 'test_helper'

class LichthidausControllerTest < ActionController::TestCase
  setup do
    @lichthidau = lichthidaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lichthidaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lichthidau" do
    assert_difference('Lichthidau.count') do
      post :create, lichthidau: { muagiai: @lichthidau.muagiai, vongdau_id: @lichthidau.vongdau_id }
    end

    assert_redirected_to lichthidau_path(assigns(:lichthidau))
  end

  test "should show lichthidau" do
    get :show, id: @lichthidau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lichthidau
    assert_response :success
  end

  test "should update lichthidau" do
    patch :update, id: @lichthidau, lichthidau: { muagiai: @lichthidau.muagiai, vongdau_id: @lichthidau.vongdau_id }
    assert_redirected_to lichthidau_path(assigns(:lichthidau))
  end

  test "should destroy lichthidau" do
    assert_difference('Lichthidau.count', -1) do
      delete :destroy, id: @lichthidau
    end

    assert_redirected_to lichthidaus_path
  end
end
