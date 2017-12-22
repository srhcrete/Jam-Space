class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user


  def current_user
    if session[:user_id]
      User.find { |u| u.id == session[:user_id] }
    else
      nil
    end
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
end
