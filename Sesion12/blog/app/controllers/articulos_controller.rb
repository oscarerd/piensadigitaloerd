class ArticulosController < ApplicationController
    def index
        @articulos = Articulo.all
    end

    def new
        @articulo = Articulo.new
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
        if @articulo.save
            redirect_to @articulo
        else
            render 'new'
        end
    end

    def edit
        @articulo = Articulo.find(params[:id])
    end

    def update
        @articulo = Articulo.find(params[:id])

        if @articulo.update(articulo_params)
            redirect_to @articulo
        else
            render 'edit'
        end
    end

    def show
        @articulo = Articulo.find(params[:id])
    end

    def destroy
        @articulo = Articulo.find(params[:id])
        @articulo.destroy
        redirect_to @articulo
    end

    private
        def articulo_params
            params.require(:articulo).permit(:title,:text)
        end
end
