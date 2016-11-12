class CreatePortHubMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :port_hub_maps do |t|
      t.decimal :no_of_port
      t.decimal :no_of_available_port
      t.string :location

      t.timestamps
    end
  end
end
