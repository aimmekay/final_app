require 'test_helper'

class DesktopsControllerTest < ActionController::TestCase
  setup do
    @desktop = desktops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desktops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desktop" do
    assert_difference('Desktop.count') do
      post :create, desktop: { assignedTo: @desktop.assignedTo, department: @desktop.department, hdd: @desktop.hdd, hostName: @desktop.hostName, jslgTag: @desktop.jslgTag, location: @desktop.location, manufacturer: @desktop.manufacturer, manufacturerTag: @desktop.manufacturerTag, model: @desktop.model, notes: @desktop.notes, osType: @desktop.osType, ram: @desktop.ram, serialNumber: @desktop.serialNumber, status: @desktop.status }
    end

    assert_redirected_to desktop_path(assigns(:desktop))
  end

  test "should show desktop" do
    get :show, id: @desktop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desktop
    assert_response :success
  end

  test "should update desktop" do
    patch :update, id: @desktop, desktop: { assignedTo: @desktop.assignedTo, department: @desktop.department, hdd: @desktop.hdd, hostName: @desktop.hostName, jslgTag: @desktop.jslgTag, location: @desktop.location, manufacturer: @desktop.manufacturer, manufacturerTag: @desktop.manufacturerTag, model: @desktop.model, notes: @desktop.notes, osType: @desktop.osType, ram: @desktop.ram, serialNumber: @desktop.serialNumber, status: @desktop.status }
    assert_redirected_to desktop_path(assigns(:desktop))
  end

  test "should destroy desktop" do
    assert_difference('Desktop.count', -1) do
      delete :destroy, id: @desktop
    end

    assert_redirected_to desktops_path
  end
end
