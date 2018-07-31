class CreateCalificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :calificaciones do |t|
      t.integer :puntaje
      t.string :comentario

      t.timestamps
    end
  end
end
