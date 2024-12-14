class Material < ApplicationRecord
  validates :nombre, :descripcion, presence: true
  belongs_to :reciclador
end
