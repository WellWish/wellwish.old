json.extract!(
  wish, :id, :title, :description, :criteria, :created_at, :updated_at
)
json.url wish_url(wish, format: :json)
