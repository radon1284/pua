class AddLocationGridToPortHubMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :port_hub_maps, :latitude, :float
    add_column :port_hub_maps, :longitude, :float
  end
end
