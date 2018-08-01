json.extract! estudiante, :id, :cedula, :nombre, :apellido, :telefono, :direccion, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
