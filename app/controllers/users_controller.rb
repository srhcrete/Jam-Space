class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      flash[:notice] = "You're signed up!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing up. Please try again."
      redirect_to '/sign_up'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password_digest, :avatar)
  end
end
