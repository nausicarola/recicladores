class Entrega < ApplicationRecord
  validates :material_id, :fecha, :cantidad, presence: true
  belongs_to :material
  belongs_to :reciclador
end
