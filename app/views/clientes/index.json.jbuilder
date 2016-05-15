json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :telefone, :endereco, :cpf
  json.url cliente_url(cliente, format: :json)
end
