json.array! @posts do |post|
    json.id post.id
    json.titulo post.titulo
    json.cuerpo post.cuerpo
    json.usuario do
        json.id post.usuario.id
        json.nombre post.usuario.nombre
    end
end