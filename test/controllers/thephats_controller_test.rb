require 'test_helper'

class ThephatsControllerTest < ActionController::TestCase
  setup do
    @thephat = thephats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thephats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thephat" do
    assert_difference('Thephat.count') do
      post :create, thephat: { ghichu: @thephat.ghichu, loaithe: @thephat.loaithe }
    end

    assert_redirected_to thephat_path(assigns(:thephat))
  end

  test "should show thephat" do
    get :show, id: @thephat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thephat
    assert_response :success
  end

  test "should update thephat" do
    patch :update, id: @thephat, thephat: { ghichu: @thephat.ghichu, loaithe: @thephat.loaithe }
    assert_redirected_to thephat_path(assigns(:thephat))
  end

  test "should destroy thephat" do
    assert_difference('Thephat.count', -1) do
      delete :destroy, id: @thephat
    end

    assert_redirected_to thephats_path
  end
end
