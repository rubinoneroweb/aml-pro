json.array!(@metalworks) do |metalwork|
  json.extract! metalwork, :id, :name, :description, :picture, :machine_id
  json.url metalwork_url(metalwork, format: :json)
end
