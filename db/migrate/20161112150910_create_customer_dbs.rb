class CreateCustomerDbs < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_dbs do |t|
      t.string :name
      t.string :location
      t.string :telephone
      t.string :mobile
      t.string :subscription_plan

      t.timestamps
    end
  end
end
