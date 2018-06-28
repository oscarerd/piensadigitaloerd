class ArticulosController < ApplicationController
    def index
        @articulos = Articulo.all
    end
    def new
    end

    def create
        # OPTION 1
        #render plain: params[:articulo].inspect

        # OPTION 2
        #@articulo = Articulo.new(params.require(:articulo).permit(:title,:text))
        #@articulo.save
        #redirect_to @articulo

        # OPTION 3
        # haciendo privados los parametros
        @articulo = Articulo.new(articulo_params)
        @articulo.save
        redirect_to @articulo
    end

    def show
        @articulo = Articulo.find(params[:id])
    end

    private
        def articulo_params
            params.require(:articulo).permit(:title,:text)
        end
end
