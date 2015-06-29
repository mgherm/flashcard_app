class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
    if cookies[:user_id]
      user_id = cookies.signed[:user_id]
      @current_user = User.find_by_id(user_id)
    end
  end
  helper_method :current_user
end
