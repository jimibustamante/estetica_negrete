require 'test_helper'

class EsteticasControllerTest < ActionController::TestCase
  setup do
    @estetica = esteticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:esteticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estetica" do
    assert_difference('Estetica.count') do
      post :create, estetica: {  }
    end

    assert_redirected_to estetica_path(assigns(:estetica))
  end

  test "should show estetica" do
    get :show, id: @estetica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estetica
    assert_response :success
  end

  test "should update estetica" do
    put :update, id: @estetica, estetica: {  }
    assert_redirected_to estetica_path(assigns(:estetica))
  end

  test "should destroy estetica" do
    assert_difference('Estetica.count', -1) do
      delete :destroy, id: @estetica
    end

    assert_redirected_to esteticas_path
  end
end
