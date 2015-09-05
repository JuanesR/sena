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
    @post = Post.new(params[:pots])
    @post.save
    redirect to('/')
  end

  get '/:id/edit' do
    @post = Post.find(params[:id])
    erb :edit
  end

  post '/:id/update' do
    @post = Post.find(params[:id])
    @post.update
    redirect to('/')
  end

  get '/:id/delete' do
    @post = Post.find(params[:id])
    @post.delete
    redirect to('/')
  end

end