class EJEMPLOHASH
    def Crear_hash
        persona = Hash.new
        persona[:nombre] = 'Pedro'
        persona[:apellido] = 'Picapiedra'

        return persona
    end

    def CrearAbreviado
        return persona = {:nombre => 'Pedro', :apellido => 'Picapiedra'}
    end

    def CrearPersona(nombre, apellido)
        return persona = {:nombre => nombre, :apellido => apellido}
    end
end

ejemplo = EJEMPLOHASH.new
persona = ejemplo.Crear_hash
puts persona[:nombre]
persona = ejemplo.CrearAbreviado
puts persona[:apellido]
persona = ejemplo.CrearPersona("Elma","Aguilar")
puts persona[:nombre]
