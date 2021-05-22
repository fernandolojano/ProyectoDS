json.extract! valor_historico, :id, :fecha, :valor, :created_at, :updated_at
json.url valor_historico_url(valor_historico, format: :json)
