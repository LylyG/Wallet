json.array!(@banks) do |bank|
  json.extract! bank, :id, :credits, :debits, :recipient
  json.url bank_url(bank, format: :json)
end
