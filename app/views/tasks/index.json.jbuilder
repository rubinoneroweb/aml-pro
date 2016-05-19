json.array!(@tasks) do |task|
  json.extract! task, :id, :operator_id, :process_id, :order_id, :quantity, :speed, :done
  json.url task_url(task, format: :json)
end
