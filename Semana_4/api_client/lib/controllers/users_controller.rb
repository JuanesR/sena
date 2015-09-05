class UserController < ApplicationController

	set :viwes, file.join(APP_PATH, 'lib', 'views', 'users')

	get '/' do 
		@users = User.all 
		erb :index
	end

	get '/new' do 
		@users = User.new
		erb :new
	end

	post '/' do 
		pust params
		@user = User.new(params[:user])
		@user.save
		redirect to('/')
	end

	get '/:id/edit' do 
		@user = User.find(params[:id ])
		erb :edit
	end

	put '/:id' do 
		#Buscar el registro 
		#Sobreescribir los atributos
		#Hacer la peticion PUT al API 
		#Redireccionar al index
	end

	get '/:id/delete' do 
		@user = User.find(params[:id])
		@user.delete
		redirect to('/')
	end
end