json.extract! agendas, :id, :fecha, :hora_inicio, :hora_fin, :created_at, :updated_at
json.url agendas_url(agendas, format: :json)
