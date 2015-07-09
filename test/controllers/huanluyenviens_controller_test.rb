require 'test_helper'

class HuanluyenviensControllerTest < ActionController::TestCase
  setup do
    @huanluyenvien = huanluyenviens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:huanluyenviens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create huanluyenvien" do
    assert_difference('Huanluyenvien.count') do
      post :create, huanluyenvien: { quoctich: @huanluyenvien.quoctich, ten: @huanluyenvien.ten, tuoi: @huanluyenvien.tuoi }
    end

    assert_redirected_to huanluyenvien_path(assigns(:huanluyenvien))
  end

  test "should show huanluyenvien" do
    get :show, id: @huanluyenvien
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @huanluyenvien
    assert_response :success
  end

  test "should update huanluyenvien" do
    patch :update, id: @huanluyenvien, huanluyenvien: { quoctich: @huanluyenvien.quoctich, ten: @huanluyenvien.ten, tuoi: @huanluyenvien.tuoi }
    assert_redirected_to huanluyenvien_path(assigns(:huanluyenvien))
  end

  test "should destroy huanluyenvien" do
    assert_difference('Huanluyenvien.count', -1) do
      delete :destroy, id: @huanluyenvien
    end

    assert_redirected_to huanluyenviens_path
  end
end
