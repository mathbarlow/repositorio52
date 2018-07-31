class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.datetime :fecha
      t.datetime :hora_inicio
      t.datetime :hora_fin

      t.timestamps
    end
  end
end
