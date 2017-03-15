class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !current_user.nil?
  end

  def login_user(user)
    session[:session_token] = user.reset_session_token
  end

  def logout_user
    current_user.reset_session_token
    session[:session_token] = nil
  end

end
