json.extract! usuario, :id, :username, :password, :nombre, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
