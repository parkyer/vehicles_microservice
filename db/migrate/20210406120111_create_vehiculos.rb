class CreateVehiculos < ActiveRecord::Migration[6.1]
  def change
    create_table :vehiculos do |t|
      t.integer :id_client
      t.string :tipo
      t.string :tamano
      t.text :descripcion

      t.timestamps
    end
  end
end
