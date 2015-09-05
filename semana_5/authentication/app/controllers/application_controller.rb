class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  def loggin_in?
    unless read_cookie && current_user
    	flash[:error] = 'Debe iniciar sesion'
    	redirect_to  root_path
     end 
  end

  def current_user
  	@current_user = User.find(read_cookie) if read_cookie
  end

  def read_cookie
  	cookies[:user_id]
  end 
end	

