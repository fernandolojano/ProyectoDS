json.extract! usuario, :id, :username, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
