class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :identificacion
      t.string :nombres
      t.string :apellidos
      t.string :genero

      t.timestamps null: false
    end
  end
end
