class CreateMaterials < ActiveRecord::Migration[7.2]
  def change
    create_table :materials do |t|
      t.string :nombre
      t.string :descripcion
      t.references :reciclador, null: false, foreign_key: true

      t.timestamps
    end
  end
end
