json.extract! todo, :id, :name, :desc, :priority, :created_at, :updated_at
json.url todo_url(todo, format: :json)
