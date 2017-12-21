class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = user.id
      flash[:notice] = 'You have sucessfully signed in.'
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
      flash[:notice] = 'You are signed out.'
    redirect_to '/'
  end
end
