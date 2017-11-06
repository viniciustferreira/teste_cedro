json.extract! prato, :id, :restaurante_id, :nome, :preco, :created_at, :updated_at
json.url prato_url(prato, format: :json)
