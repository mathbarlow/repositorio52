class Localidad < ApplicationRecord
	has_many :universidad_localidades
  	has_many :localidades, through: :universidad_localidades
end
