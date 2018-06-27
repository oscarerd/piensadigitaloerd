class Empleado
    def net_salario(salario)
        return base_salario(salario)
    end

    protected
    def base_salario(salario)
        return salario - (salario * 0.12)
    end
end

class Director < Empleado
    def initialize(bonus)
        @bonus = bonus
    end

    def net_salario(salario)
        return base_salario(salario) + @bonus
    end
end

empleado = Empleado.new()
director = Director.new(2000)

puts "Empleado:"
puts empleado.net_salario(120000)
puts "Director:"
puts director.net_salario(120000)