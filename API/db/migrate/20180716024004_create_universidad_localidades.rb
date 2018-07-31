class CreateUniversidadLocalidades < ActiveRecord::Migration[5.2]
  def change
    create_table :universidad_localidades do |t|
		t.belongs_to	:localidad
		t.belongs_to	:universidad
		t.string 		:sede
		t.timestamps
    end
  end
end