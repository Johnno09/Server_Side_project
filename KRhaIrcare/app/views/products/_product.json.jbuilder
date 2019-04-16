json.extract! product, :id, :brand, :name, :description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
