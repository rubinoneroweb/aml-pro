require 'test_helper'

class MetalworksControllerTest < ActionController::TestCase
  setup do
    @metalwork = metalworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metalworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metalwork" do
    assert_difference('Metalwork.count') do
      post :create, metalwork: { description: @metalwork.description, machine_id: @metalwork.machine_id, name: @metalwork.name, picture: @metalwork.picture }
    end

    assert_redirected_to metalwork_path(assigns(:metalwork))
  end

  test "should show metalwork" do
    get :show, id: @metalwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metalwork
    assert_response :success
  end

  test "should update metalwork" do
    patch :update, id: @metalwork, metalwork: { description: @metalwork.description, machine_id: @metalwork.machine_id, name: @metalwork.name, picture: @metalwork.picture }
    assert_redirected_to metalwork_path(assigns(:metalwork))
  end

  test "should destroy metalwork" do
    assert_difference('Metalwork.count', -1) do
      delete :destroy, id: @metalwork
    end

    assert_redirected_to metalworks_path
  end
end
