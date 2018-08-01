class CreateLocalidades < ActiveRecord::Migration[5.2]
  def change
    create_table :localidades do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
