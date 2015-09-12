class UsersController < ApplicationController

  set :views, File.join(APP_PATH, 'lib', 'views', 'users')

  get '/' do
    @users = User.all
    erb :index
  end

  get '/new' do
    @user = User.new
    erb :new
  end

  post '/' do
    puts params
    @user = User.new(params[:user])
    @user.save
    redirect to('/')
  end

  get '/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  post '/:id/update' do
    @user = User.find(params[:id])
    @user.update
    redirect to('/')
  end

  get '/:id/delete' do
    @user = User.find(params[:id])
    @user.delete
    redirect to('/')
  end


<<<<<<< HEAD

end



#10.74.79.174
=======
  delete ':id/delete'
end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
