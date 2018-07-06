# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = Usuario.create({ nombre: 'Nasugo' })
user.posts.create( {titulo: 'Prueba Nasugo', cuerpo: 'Cuerpo Post Nasugo' })

5.times do
    user = Usuario.create({ nombre: Faker::Name.name })
    user.posts.create( {titulo: Faker::Book.title, cuerpo: Faker::Lorem.sentence } )
end