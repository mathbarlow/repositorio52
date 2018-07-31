class Universidad < ApplicationRecord
	has_many :materia_uni
	has_many :materia, through: :materia_uni

	has_many :universidad_localidades
  	has_many :localidades, through: :universidad_localidades

  	has_many  :usuarios
end