class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def is_logged_in? 
  		if session[:user_id]
  		return true
  		else
  		return false
  		end
    end
end
