require 'test_helper'

class PortHubMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port_hub_map = port_hub_maps(:one)
  end

  test "should get index" do
    get port_hub_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_port_hub_map_url
    assert_response :success
  end

  test "should create port_hub_map" do
    assert_difference('PortHubMap.count') do
      post port_hub_maps_url, params: { port_hub_map: { location: @port_hub_map.location, no_of_available_port: @port_hub_map.no_of_available_port, no_of_port: @port_hub_map.no_of_port } }
    end

    assert_redirected_to port_hub_map_url(PortHubMap.last)
  end

  test "should show port_hub_map" do
    get port_hub_map_url(@port_hub_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_hub_map_url(@port_hub_map)
    assert_response :success
  end

  test "should update port_hub_map" do
    patch port_hub_map_url(@port_hub_map), params: { port_hub_map: { location: @port_hub_map.location, no_of_available_port: @port_hub_map.no_of_available_port, no_of_port: @port_hub_map.no_of_port } }
    assert_redirected_to port_hub_map_url(@port_hub_map)
  end

  test "should destroy port_hub_map" do
    assert_difference('PortHubMap.count', -1) do
      delete port_hub_map_url(@port_hub_map)
    end

    assert_redirected_to port_hub_maps_url
  end
end
