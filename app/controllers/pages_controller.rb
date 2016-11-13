class PagesController < ApplicationController
  def home
  end

  def pldt_office
  	@customer_dbs = CustomerDb.all
  	@hash = Gmaps4rails.build_markers(@customer_dbs) do |customer_db, marker|
	  marker.lat customer_db.latitude
	  marker.lng customer_db.longitude
	  marker.infowindow customer_db.name
	  marker.picture({
       "url" => "https://s3.amazonaws.com/pldt.app/map-marker-icon.png",
       "width" =>  48,
       "height" => 48})
	 end
  	@port_hub_maps = PortHubMap.all
  	@hash = Gmaps4rails.build_markers(@port_hub_maps) do |port_hub_map, marker|
	  marker.lat port_hub_map.latitude
	  marker.lng port_hub_map.longitude
	  marker.infowindow port_hub_map.no_of_port.to_i
	  marker.picture({
       "url" => "https://s3.amazonaws.com/pldt.app/blue.png",
       "width" =>  48,
       "height" => 48})
	 end
  	
  end

  def customer
  end

  def installer
    @job_orders = JobOrder.all
    @hash = Gmaps4rails.build_markers(@job_orders) do |job_order, marker|
    marker.lat job_order.latitude
    marker.lng job_order.longitude
    marker.infowindow job_order.customer_location
    marker.picture({
       "url" => "https://s3.amazonaws.com/pldt.app/blue.png",
       "width" =>  48,
       "height" => 48})
    end
  end
end
