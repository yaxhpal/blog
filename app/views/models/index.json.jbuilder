json.array!(@models) do |model|
  json.extract! model, :id, :Comment, :commenter, :body, :post_id
  json.url model_url(model, format: :json)
end
