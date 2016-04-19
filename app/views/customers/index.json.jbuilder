json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :description, :picture
  json.url customer_url(customer, format: :json)
end
