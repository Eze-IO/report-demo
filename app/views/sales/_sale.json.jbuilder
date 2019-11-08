json.extract! sale, :id, :amount, :sale_date, :sales_associate_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
