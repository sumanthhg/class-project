json.extract! product, :id, :name, :price, :description, :category, :release_date, :is_available, :strock, :created_at, :updated_at
json.url product_url(product, format: :json)
