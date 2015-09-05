class PostsControllers < ApplicationController

	set :views, File.join(APP_PATH,'lib', 'views', 'posts')

	get '/' do 
		@posts = Post.all 
		erb :index
	end

	get '/new' do
		@posts = Post.new
		erb :new
	end

	post '/' do
	    @posts = Post.new(params[:posts])
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
