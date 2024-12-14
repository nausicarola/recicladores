class CreateEntregas < ActiveRecord::Migration[7.2]
  def change
    create_table :entregas do |t|
      t.references :material, null: false, foreign_key: true
      t.references :reciclador, null: false, foreign_key: true
      t.date :fecha
      t.integer :cantidad

      t.timestamps
    end
  end
end
