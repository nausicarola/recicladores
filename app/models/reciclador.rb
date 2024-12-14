class Reciclador < ApplicationRecord
  validates :nombre, :telefono, :direccion, :email, presence: true
  has_many :materiales, dependent: :destroy
  has_many :entregas, dependent: :destroy
end
