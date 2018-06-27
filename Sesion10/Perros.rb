load 'Perro.rb'

class Perros
    def initialize()
        # atributos
        $identificador = 0
        $perros = []
    end

    def crear(raza, nombre)
        perro = Perro.new(raza, nombre)
        $perros[$identificador] = perro
        next_id()
    end

    def eliminar(idEliminar)
        $perros.delete_at(idEliminar)
    end

    def Retornar()
        return $perros
    end

    protected
    # métodos protegidos

    private
    # métodos protegidos
    def next_id
        $identificador += 1
    end
end
