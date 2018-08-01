class Tutoria < ApplicationRecord
	belongs_to :calificacion
	belongs_to :agenda
	belongs_to :usuario
end
