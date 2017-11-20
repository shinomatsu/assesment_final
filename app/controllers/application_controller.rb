class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  # login or not
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

end
