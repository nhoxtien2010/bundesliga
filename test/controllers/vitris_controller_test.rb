require 'test_helper'

class VitrisControllerTest < ActionController::TestCase
  setup do
    @vitri = vitris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vitri" do
    assert_difference('Vitri.count') do
      post :create, vitri: { phamvihd: @vitri.phamvihd, tenvitri: @vitri.tenvitri }
    end

    assert_redirected_to vitri_path(assigns(:vitri))
  end

  test "should show vitri" do
    get :show, id: @vitri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vitri
    assert_response :success
  end

  test "should update vitri" do
    patch :update, id: @vitri, vitri: { phamvihd: @vitri.phamvihd, tenvitri: @vitri.tenvitri }
    assert_redirected_to vitri_path(assigns(:vitri))
  end

  test "should destroy vitri" do
    assert_difference('Vitri.count', -1) do
      delete :destroy, id: @vitri
    end

    assert_redirected_to vitris_path
  end
end
