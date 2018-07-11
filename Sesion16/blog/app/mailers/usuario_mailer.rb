class UsuarioMailer < ApplicationMailer
    def bienvenidos_email
        @usuario = params[:usuario]
        @url = 'http://localhost:3000/users/sign_in/'

        attachments['Welcome.jpg'] = File.read('C:\\Users\\TopGroup\\Documents\\OERD\\Sesion16\\blog\\app\\assets\\images\\Welcome.jpg')
        mail(to: @usuario.email, subject: 'Bienvenido al sitio de prueba')
    end
end
