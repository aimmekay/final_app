require 'test_helper'

class DeskphonesControllerTest < ActionController::TestCase
  setup do
    @deskphone = deskphones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deskphones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deskphone" do
    assert_difference('Deskphone.count') do
      post :create, deskphone: { assignedTo: @deskphone.assignedTo, department: @deskphone.department, location: @deskphone.location, macAddress: @deskphone.macAddress, manufacturer: @deskphone.manufacturer, model: @deskphone.model, notes: @deskphone.notes, phoneNumber: @deskphone.phoneNumber, serialNumber: @deskphone.serialNumber, status: @deskphone.status }
    end

    assert_redirected_to deskphone_path(assigns(:deskphone))
  end

  test "should show deskphone" do
    get :show, id: @deskphone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deskphone
    assert_response :success
  end

  test "should update deskphone" do
    patch :update, id: @deskphone, deskphone: { assignedTo: @deskphone.assignedTo, department: @deskphone.department, location: @deskphone.location, macAddress: @deskphone.macAddress, manufacturer: @deskphone.manufacturer, model: @deskphone.model, notes: @deskphone.notes, phoneNumber: @deskphone.phoneNumber, serialNumber: @deskphone.serialNumber, status: @deskphone.status }
    assert_redirected_to deskphone_path(assigns(:deskphone))
  end

  test "should destroy deskphone" do
    assert_difference('Deskphone.count', -1) do
      delete :destroy, id: @deskphone
    end

    assert_redirected_to deskphones_path
  end
end
