class ArticulosController < ApplicationController
    #layout "articulos"
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

        # OPTION 4
        # @articulo = Articulo.new(articulo_params)
        # if @articulo.save
        #     redirect_to @articulo
        # else
        #     render 'new'
        # end

        @articulo = Articulo.new(articulo_params)
        if @articulo.save
            flash[:notice] = "Artículo creado correctamente"
            redirect_to @articulo
        else
            flash[:notice] = "No se pudo vrear el artículo"
            render 'new'
        end

    end

    def edit
        session[:articuloID] = params[:id]
        @articulo = Articulo.find(session[:articuloID])
        #@articulo = Articulo.find(params[:id])
        puts "ID del articulo en la sesión: #{session[:articuloID]}"
    end

    def update
        #@articulo = Articulo.find(params[:id])
        @articulo = Articulo.find(session[:articuloID])
        session.delete(:articuloID)

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