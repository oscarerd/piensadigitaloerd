module Api
    module V1
        class UsuariosController < ApplicationController
            def index
                @usuario = Usuario.order('created_at DESC')

                render json: @usuario
            end
            def create
                @usuario = Usuario.new(usuario_params)
                if @usuario.save 
                    render status: :created
                else
                    render json: @usuario.errors, status: :unprocessable_entity
                end
            end

            private
            def usuario_params
                params.require(:usuario).permit(:nombre)
            end
        end
    end
end