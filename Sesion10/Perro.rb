# define la clase rrope
class Perro
    #metodo inicializar la clase
    def initialize(raza,nombre)
        #atributos
        @raza = raza
        @nombre = nombre
    end

#método ladrar
    def ladrar
        puts 'Guau! Guau!'
    end

    def saludar
        puts "Soy un perro de la raza: #{@raza} y mi nombre es #{@nombre}"
    end
end
