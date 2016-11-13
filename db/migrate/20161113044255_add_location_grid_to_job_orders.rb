class AddLocationGridToJobOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :job_orders, :latitude, :float
    add_column :job_orders, :longitude, :float
  end
end
