json.extract! app, :id, :name, :image_irl, :developer, :description, :price, :ranting, :created_at, :updated_at
json.url app_url(app, format: :json)