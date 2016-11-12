json.extract! customer_db, :id, :name, :location, :telephone, :mobile, :subscription_plan, :created_at, :updated_at
json.url customer_db_url(customer_db, format: :json)