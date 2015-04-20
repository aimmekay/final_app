require 'test_helper'

class TonersControllerTest < ActionController::TestCase
  setup do
    @toner = toners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toner" do
    assert_difference('Toner.count') do
      post :create, toner: { color: @toner.color, id: @toner.id, manufacturer: @toner.manufacturer, model: @toner.model, quantity: @toner.quantity }
    end

    assert_redirected_to toner_path(assigns(:toner))
  end

  test "should show toner" do
    get :show, id: @toner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toner
    assert_response :success
  end

  test "should update toner" do
    patch :update, id: @toner, toner: { color: @toner.color, id: @toner.id, manufacturer: @toner.manufacturer, model: @toner.model, quantity: @toner.quantity }
    assert_redirected_to toner_path(assigns(:toner))
  end

  test "should destroy toner" do
    assert_difference('Toner.count', -1) do
      delete :destroy, id: @toner
    end

    assert_redirected_to toners_path
  end
end
