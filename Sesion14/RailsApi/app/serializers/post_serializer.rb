class PostSerializer < ActiveModel::Serializer
    attributes :id, :titulo, :cuerpo
    class UsuarioSerializer < ActiveModel::Serializer
        attributes :nombre
    end
    has_many :usuario, serializer: UsuarioSerializer
end