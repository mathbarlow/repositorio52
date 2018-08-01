class Usuario < ActiveRecord::Base
  has_many :tutoria
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end