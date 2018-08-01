json.extract! calificaciones, :id, :puntaje, :comentario, :created_at, :updated_at
json.url calificaciones_url(calificaciones, format: :json)
