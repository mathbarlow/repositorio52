class UniversidadLocalidad < ApplicationRecord
	belongs_to :localidad
	belongs_to :universidad
end