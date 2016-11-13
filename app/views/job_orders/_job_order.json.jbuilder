json.extract! job_order, :id, :customer_name, :customer_location, :type_of_plan, :status, :job_order_no, :created_at, :updated_at
json.url job_order_url(job_order, format: :json)