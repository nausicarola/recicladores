# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 20.times do
#   Reciclador.create(
#     nombre: Faker::Name.name,
#     telefono: Faker::PhoneNumber.phone_number,
#     direccion: Faker::Address.full_address,
#     email: Faker::Internet.email
#   )
# end

# Reciclador.all.each do |reciclador|
#   rand(1..5).times do
#     Material.create(
#       nombre: Faker::Commerce.product_name,
#       descripcion: Faker::Lorem.sentence,
#       reciclador: reciclador
#     )
#   end
# end

# puts "Datos poblados"


# User.create(email: 'operador1@gmail.com', password: '291ABASD932')
# User.create(email: 'operador2@gmail.com', password: '931SDABA988')

# Crear algunos recicladores
# reciclador1 = Reciclador.create!(
#   nombre: 'Juan Pérez',
#   telefono: '123456789',
#   direccion: 'Calle Falsa 123',
#   email: 'juan.perez@example.com'
# )

# reciclador2 = Reciclador.create!(
#   nombre: 'María López',
#   telefono: '987654321',
#   direccion: 'Avenida Siempre Viva 456',
#   email: 'maria.lopez@example.com'
# )

# Crear algunos materiales
# material1 = Material.create!(
#   nombre: 'Plástico',
#   descripcion: 'Material reciclable de plástico',
#   reciclador_id: 52
# )

# material2 = Material.create!(
#   nombre: 'Cartón',
#   descripcion: 'Material reciclable de cartón',
#   reciclador_id: 51
# )

# material3 = Material.create!(
#   nombre: 'Vidrio',
#   descripcion: 'Material reciclable de vidrio',
#   reciclador_id: 51
# )

# Crear algunas entregas asociadas a los recicladores y materiales

Entrega.create!(
  reciclador_id: 52,
  material_id: 29,
  fecha: Date.today - 1.day,
  cantidad: 30
)

Entrega.create!(
  reciclador_id: 51,
  material_id: 30,
  fecha: Date.today - 2.days,
  cantidad: 20
)

Entrega.create!(
  reciclador_id: 51,
  material_id: 31,
  fecha: Date.today - 3.days,
  cantidad: 40
)
