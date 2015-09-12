<<<<<<< HEAD
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
=======
class PostsController < ApplicationController

  set :views, File.join(APP_PATH, 'lib', 'views', 'posts')

  get '/' do
    @posts = Post.all
    erb :index
  end

  get '/new' do
    @post = Post.new
    erb :new
  end

  post '/' do
    puts params
    @post = Post.new(params[:post])
    @post.save
    redirect to('/')
  end

  get '/:id/edit' do
    @post = Post.find(params[:id])
    erb :edit
  end

  post '/:id' do
    # Buscar el registro
    # Sobreescribir los atributos
    # Hacer la petición PUT al API
    # Redireccionar al index
  end


  get '/:id/delete' do
    @post = Post.find(params[:id])
    @post.delete
    redirect to('/')
  end
end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
