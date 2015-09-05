class CommentsControllers < ApplicationController

	set :views, File.join(APP_PATH,'lib', 'views', 'comments')

	get '/' do 
		@posts = Comment.all 
		erb :index
	end

	get '/new' do
		@posts = Comment.new
		erb :new
	end

	post '/' do
	    @comments = Comment.new(params[:posts])
	    @posts.save
	    redirect to('/')
	end

	get '/:id/edit' do
	    @posts = Post.find(params[:id])
	    erb :edit
	end

	post '/:id' do
	  #Buscar el registro
	  #sobreescribir los atributos
	  #Hacer la peticion PUT al API
	  #Redireccionar al index
	end

	get '/:id/delete' do
	    @post = Post.find(params[:id])
	    @post.delete
	    redirect to('/')
	end 
end
