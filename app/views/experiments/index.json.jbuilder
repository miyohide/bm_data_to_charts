json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :experiment_at, :ruby_type, :note
  json.url experiment_url(experiment, format: :json)
end
