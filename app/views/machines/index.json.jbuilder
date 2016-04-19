json.array!(@machines) do |machine|
  json.extract! machine, :id, :name, :description, :picture
  json.url machine_url(machine, format: :json)
end
