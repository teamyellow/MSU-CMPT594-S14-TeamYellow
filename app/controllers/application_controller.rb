class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  
  #def current_user
   # @current_user ||= User.find(session[:User_id]) if session[:User_id]
  #end
end
