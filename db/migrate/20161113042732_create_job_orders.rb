class CreateJobOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :job_orders do |t|
      t.string :customer_name
      t.string :customer_location
      t.string :type_of_plan
      t.string :status
      t.string :job_order_no

      t.timestamps
    end
  end
end
