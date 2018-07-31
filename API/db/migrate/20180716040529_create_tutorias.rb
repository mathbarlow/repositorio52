class CreateTutorias < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorias do |t|
	 	t.belongs_to	:calificacion
	 	t.belongs_to	:agenda
	 	t.belongs_to	:usuario
      	t.timestamps
    end
  end
end
