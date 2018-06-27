load 'Perro.rb'
load 'Perros.rb'

# para crear objetos se usa new
#

perro = Perro.new('Labrador','Dante')
perro2 = Perro.new('Beagle','Bruno')

# muestra el id de objeto del SO o memoria
puts "ID del perro es #{perro.object_id}"
puts "ID del perro2 es #{perro2.object_id}"

if perro.respond_to?("correr")
    perro.correr
else
    puts "Lo siento, el objeto no corre"
end

perro.ladrar
perro.saludar
perro2.ladrar
perro2.saludar

d1 = perro
d1.saludar

perro = nil
d1.saludar

puts "\nListado de perros\n"
perros = Perros.new
perros.crear('Labrador', 'Dante')
perros.crear('Beagle', 'Bruno')
perros.crear('Pastor aleman', 'Chango')
array = perros.Retornar()
for perro in array
    perro.saludar
end
