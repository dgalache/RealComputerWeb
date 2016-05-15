json.array!(@ordens) do |ordem|
  json.extract! ordem, :id, :equipamento, :defeito, :marca, :descricao, :string, :status, :valor, :cliente_id, :empregado_id
  json.url ordem_url(ordem, format: :json)
end
