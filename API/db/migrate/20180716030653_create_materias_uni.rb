class CreateMateriasUni < ActiveRecord::Migration[5.2]
  def change
    create_table :materias_uni do |t|
     	t.belongs_to	:materia
		t.belongs_to	:universidad
      	t.timestamps
    end
  end
end
