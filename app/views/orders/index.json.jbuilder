json.array!(@orders) do |order|
  json.extract! order, :id, :date_ric, :date_cons, :note, :article_id, :customer_id, :price
  json.url order_url(order, format: :json)
end
