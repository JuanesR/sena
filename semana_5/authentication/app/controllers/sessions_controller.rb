class SessionsController < ApplicationController
<<<<<<< HEAD

  def new
  	@session = Session.new
  end

  def create
  	@session = Session.new(params[:session])

  	if @session.valid? && login?
      flash[:notice] = "hola"
      redirect_to root_path
  	else
  		render :new
  	end
  end

  def destroy 
    cookies.delete(:user_id)
    flash[:notice]
    redirect_to root_path
  end

  private 
=======
  def new
    @session = Session.new
  end

  def create
    @session = Session.new(params[:session])

    if @session.valid? && login?
      flash[:notice] = "Hola"
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    cookies.delete(:user_id)
    flash[:notice] = 'Chao'
    redirect_to root_path
  end

  private
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad

  def login?
    @user = User.authenticate(@session.email, @session.password)
    if @user
      set_cookie
    else
      false
    end
  end

  def set_cookie
<<<<<<< HEAD
    cookies[:user_id]= @user.id
  end


end
=======
    cookies[:user_id] = @user.id
  end

end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
