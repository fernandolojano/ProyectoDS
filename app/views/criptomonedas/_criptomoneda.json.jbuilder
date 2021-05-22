json.extract! criptomoneda, :id, :token, :nombre, :valor_actual, :created_at, :updated_at
json.url criptomoneda_url(criptomoneda, format: :json)
