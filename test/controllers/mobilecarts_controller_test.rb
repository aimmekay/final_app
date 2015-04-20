require 'test_helper'

class MobilecartsControllerTest < ActionController::TestCase
  setup do
    @mobilecart = mobilecarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobilecarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobilecart" do
    assert_difference('Mobilecart.count') do
      post :create, mobilecart: { assignedTo: @mobilecart.assignedTo, department: @mobilecart.department, hostName: @mobilecart.hostName, jslgTag: @mobilecart.jslgTag, location: @mobilecart.location, manufacturer: @mobilecart.manufacturer, manufacturerTag: @mobilecart.manufacturerTag, model: @mobilecart.model, notes: @mobilecart.notes, osType: @mobilecart.osType, serialNumber: @mobilecart.serialNumber, status: @mobilecart.status }
    end

    assert_redirected_to mobilecart_path(assigns(:mobilecart))
  end

  test "should show mobilecart" do
    get :show, id: @mobilecart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobilecart
    assert_response :success
  end

  test "should update mobilecart" do
    patch :update, id: @mobilecart, mobilecart: { assignedTo: @mobilecart.assignedTo, department: @mobilecart.department, hostName: @mobilecart.hostName, jslgTag: @mobilecart.jslgTag, location: @mobilecart.location, manufacturer: @mobilecart.manufacturer, manufacturerTag: @mobilecart.manufacturerTag, model: @mobilecart.model, notes: @mobilecart.notes, osType: @mobilecart.osType, serialNumber: @mobilecart.serialNumber, status: @mobilecart.status }
    assert_redirected_to mobilecart_path(assigns(:mobilecart))
  end

  test "should destroy mobilecart" do
    assert_difference('Mobilecart.count', -1) do
      delete :destroy, id: @mobilecart
    end

    assert_redirected_to mobilecarts_path
  end
end
