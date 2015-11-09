class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string 'nombre'
      t.string 'especialidad'
      t.integer 'telefono', limit:53

      t.timestamps null: false
    end
  end
end
