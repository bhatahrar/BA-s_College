class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      redirect_to login_path, alert: "You must be logged in to access this page"
    end
  end
  def require_admin
    unless current_user&.role=="admin"
      redirect_to root_path, alert:"Only admin can access this page"
  end
end 
end
