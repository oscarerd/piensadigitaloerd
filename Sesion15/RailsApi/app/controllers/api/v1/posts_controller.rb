module Api
    module V1
        class PostsController < ApplicationController
            include ActionController::HttpAuthentication::Token::ControllerMethods

            before_action :authenticate, only: [:create, :destroy]

            def index
                @posts = Post.order('created_at DESC')

                render json: @posts
            end

            def create
                puts "params: #{@usuario.nombre}"
                @post = @usuario.posts.new(post_params) 

                if @post.save
                    render json: @post, status: :created
                else
                    render json: @post.erros, status: :unprocessable_entity
                end
            end

            def destroy
                @post = @usuario.posts.find(params[:id]) 

                if @post
                    @post.destroy
                else
                    render json: {post: "Not Found"}, status: :not_found
                end
            end

            private

            def post_params
                params.require(:post).permit(:titulo, :cuerpo)
            end

            def authenticate
                authenticate_or_request_with_http_token do |token, options|
                    @usuario = Usuario.find_by(token: token)
                end
            end
        end
    end
end