require 'test_helper'

class LaptopsControllerTest < ActionController::TestCase
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post :create, laptop: { assignedTo: @laptop.assignedTo, department: @laptop.department, hdd: @laptop.hdd, hostName: @laptop.hostName, jslgTag: @laptop.jslgTag, location: @laptop.location, manufacturer: @laptop.manufacturer, manufacturerTag: @laptop.manufacturerTag, model: @laptop.model, notes: @laptop.notes, osType: @laptop.osType, ram: @laptop.ram, serialNumber: @laptop.serialNumber, status: @laptop.status }
    end

    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should show laptop" do
    get :show, id: @laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laptop
    assert_response :success
  end

  test "should update laptop" do
    patch :update, id: @laptop, laptop: { assignedTo: @laptop.assignedTo, department: @laptop.department, hdd: @laptop.hdd, hostName: @laptop.hostName, jslgTag: @laptop.jslgTag, location: @laptop.location, manufacturer: @laptop.manufacturer, manufacturerTag: @laptop.manufacturerTag, model: @laptop.model, notes: @laptop.notes, osType: @laptop.osType, ram: @laptop.ram, serialNumber: @laptop.serialNumber, status: @laptop.status }
    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete :destroy, id: @laptop
    end

    assert_redirected_to laptops_path
  end
end
