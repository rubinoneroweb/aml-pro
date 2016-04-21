json.array!(@articles) do |article|
  json.extract! article, :id, :code, :description, :picture, :drawing
  json.url article_url(article, format: :json)
end
