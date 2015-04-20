require 'test_helper'

class DtusControllerTest < ActionController::TestCase
  setup do
    @dtu = dtus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dtus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dtu" do
    assert_difference('Dtu.count') do
      post :create, dtu: { assignedTo: @dtu.assignedTo, department: @dtu.department, hostName: @dtu.hostName, jslgTag: @dtu.jslgTag, location: @dtu.location, macAddress: @dtu.macAddress, manufacturer: @dtu.manufacturer, model: @dtu.model, notes: @dtu.notes, serialNumber: @dtu.serialNumber, status: @dtu.status }
    end

    assert_redirected_to dtu_path(assigns(:dtu))
  end

  test "should show dtu" do
    get :show, id: @dtu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dtu
    assert_response :success
  end

  test "should update dtu" do
    patch :update, id: @dtu, dtu: { assignedTo: @dtu.assignedTo, department: @dtu.department, hostName: @dtu.hostName, jslgTag: @dtu.jslgTag, location: @dtu.location, macAddress: @dtu.macAddress, manufacturer: @dtu.manufacturer, model: @dtu.model, notes: @dtu.notes, serialNumber: @dtu.serialNumber, status: @dtu.status }
    assert_redirected_to dtu_path(assigns(:dtu))
  end

  test "should destroy dtu" do
    assert_difference('Dtu.count', -1) do
      delete :destroy, id: @dtu
    end

    assert_redirected_to dtus_path
  end
end
