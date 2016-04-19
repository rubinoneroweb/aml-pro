json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :description, :picture, :machine_id
  json.url tool_url(tool, format: :json)
end
