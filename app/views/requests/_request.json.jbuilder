json.extract! request, :id, :title, :description, :direction, :created_at, :updated_at
json.url request_url(request, format: :json)
