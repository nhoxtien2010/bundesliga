require 'test_helper'

class CauthusControllerTest < ActionController::TestCase
  setup do
    @cauthu = cauthus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cauthus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cauthu" do
    assert_difference('Cauthu.count') do
      post :create, cauthu: { cannang: @cauthu.cannang, chieucao: @cauthu.chieucao, doibong_id: @cauthu.doibong_id, quoctich: @cauthu.quoctich, ten: @cauthu.ten, tuoi: @cauthu.tuoi, vitri_id: @cauthu.vitri_id }
    end

    assert_redirected_to cauthu_path(assigns(:cauthu))
  end

  test "should show cauthu" do
    get :show, id: @cauthu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cauthu
    assert_response :success
  end

  test "should update cauthu" do
    patch :update, id: @cauthu, cauthu: { cannang: @cauthu.cannang, chieucao: @cauthu.chieucao, doibong_id: @cauthu.doibong_id, quoctich: @cauthu.quoctich, ten: @cauthu.ten, tuoi: @cauthu.tuoi, vitri_id: @cauthu.vitri_id }
    assert_redirected_to cauthu_path(assigns(:cauthu))
  end

  test "should destroy cauthu" do
    assert_difference('Cauthu.count', -1) do
      delete :destroy, id: @cauthu
    end

    assert_redirected_to cauthus_path
  end
end
