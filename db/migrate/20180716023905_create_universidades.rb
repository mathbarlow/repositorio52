class CreateUniversidades < ActiveRecord::Migration[5.2]
  def change
    create_table :universidades do |t|
      t.belongs_to :usuarios	
      t.string :nit
      t.string :nombre
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
