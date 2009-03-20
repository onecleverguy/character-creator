class TheatreController < ApplicationController
  
  def index
    if session[:user_id]
      redirect_to(:action => "stage")
    end
  end
  
  def stage
    @user = User.find(session[:user_id])
    @souls = Soul.find(:all, :conditions => [ "user_id = ?", @user.id], :order => "name")
  end
  
  def login
    if session[:user_id]
      redirect_to(:action => "stage")
    end
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:action => "stage")
      else
        flash.now[:notice] = "Invalid username and/or passowrd"
      end
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "You have logged out."
    redirect_to(:action => "index")
  end


end
