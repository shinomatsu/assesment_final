class SessionsController < ApplicationController
  
  def new 
  end 


  def create 
	  #serch user
	  user = User.find_by(email: params[:session][:email])
	  if user && user.authenticate(params[:session][:password])
	    session[:user_id] = user.id
	    redirect_to users_path
	  else
	  	flash[:warning] = "Invalid Username or password"
	    render :new
	  end

  end 



  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have successfully logged out."


    redirect_to root_path, :flash => { :success => "logged out successfully!"}


  end


end
