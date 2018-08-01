json.extract! tutor, :id, :cedula, :nombre, :apellido, :telefono, :direccion, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
