class CreateRecicladors < ActiveRecord::Migration[7.2]
  def change
    create_table :recicladors do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.string :email

      t.timestamps
    end
  end
end
