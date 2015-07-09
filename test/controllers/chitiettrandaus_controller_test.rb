require 'test_helper'

class ChitiettrandausControllerTest < ActionController::TestCase
  setup do
    @chitiettrandau = chitiettrandaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chitiettrandaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chitiettrandau" do
    assert_difference('Chitiettrandau.count') do
      post :create, chitiettrandau: { trandau_id: @chitiettrandau.trandau_id }
    end

    assert_redirected_to chitiettrandau_path(assigns(:chitiettrandau))
  end

  test "should show chitiettrandau" do
    get :show, id: @chitiettrandau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chitiettrandau
    assert_response :success
  end

  test "should update chitiettrandau" do
    patch :update, id: @chitiettrandau, chitiettrandau: { trandau_id: @chitiettrandau.trandau_id }
    assert_redirected_to chitiettrandau_path(assigns(:chitiettrandau))
  end

  test "should destroy chitiettrandau" do
    assert_difference('Chitiettrandau.count', -1) do
      delete :destroy, id: @chitiettrandau
    end

    assert_redirected_to chitiettrandaus_path
  end
end
