puts 5 + 56

# OPERACIONES BÁSICAS
puts "SUMA"
puts 1.0 + 2.0
puts "MULTIPLICACION"
puts 3.0 * 3.5
puts "RESTA"
puts 87.0 - 43.0
puts "DIVISION"
puts 1.0 / 3.0

puts ""
puts "OPERACIONES ENTEROS"
puts "SUMA"
puts 1 + 2
puts "MULTIPLICACION"
puts 3 * 3
puts "RESTA"
puts 12 - 4
puts "DIVISION"
puts 12 / 3

puts ""
puts "OPERACIONES COMPLEJAS"
puts 5 * (12 - 8) + -15
puts 98 + (4533343 / (13 * 8)) * -52

puts ""
puts "TRABAJANDO CON TEXTOS"
puts "HOLA, MUNDO!"
puts ""
puts "Adios. "

puts ""
puts "CONCATENAR"
puts "Me gusta" + "dormir todo el dìa."
puts ""

# MEZCLANDO TIPOS DE DATO
puts "parpadeo " * 5
# puts "parpadeo " + 4
# puts "parpadeo " - 3
# puts "parpadeo " / 3

# Declaraciòn de variables
myString = "... puedes decir eso de nuevo..."
puts myString
name = 'Oscar Eduardo Rodriguez Dimate'
puts 'me llamo ' + name + "."

#declarar variables de varios tipos
puts "======================="
var = 'solo otro ' + 'texto'
puts var

var = 5 * (1+2)
puts var

# Asignacion variables
puts "======================="
var1 = 8
var2 = var1
puts var1
puts var2

puts "======================="
var1 = 'ocho'
puts var1
puts var2

# estructuras de control
puts "======================="
var1 = 2
    case var1
        when 1,2..5
            print "1...5\n"
        when 6..10
            print "6...10\n"
    end

# CAPTURANDO DATOS
puts "======================="
puts "Ingrese un nùmero"
var1 = gets.chop.to_i
    case var1
        when 1,2..5
            print "1...5\n"
        when 6..10
            print "6...10\n"
        else
            print "No Aplica\n"
    end

# CAPTURANDO DATOS
puts "======================="
puts "IF"
puts "Ingrese un nùmero"
tipoDato = gets.chop.to_i
if tipoDato >= 18
    puts "Es mayor de edad"
else
    puts "Es menor de edad"
end

# Arrays
puts "======================="
puts "ARRAYS"
numeros = [5,10,2,1,4,6,3,2]
puts numeros.sort
puts numeros.reverse

puts "Mostrar sin duplicados"
puts numeros.uniq

puts "Actualizar el array en el proceso"
numeros.uniq!
numeros.sort!
puts numeros

puts "======================="
puts "Recorrer un array"
nombres = ['Satish','Talim', 'Ruby','Java']
nombres.each do |item|
    puts "Imprimir el elemento #{item}"
end

puts "======================="
puts "FOR"

inicio = 11
fin = 20
for i in(inicio..fin)
    puts "voy en " + String(i)
end



