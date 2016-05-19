json.array!(@jobs) do |job|
  json.extract! job, :id, :operator_id, :started_at, :completed_at, :metalwork_id, :order_id
  json.url job_url(job, format: :json)
end
