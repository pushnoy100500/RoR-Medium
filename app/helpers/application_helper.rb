module ApplicationHelper
	def is_logged_in? 
  		if session[:user_id]
  		return true
  		else
  		return false
  		end
    end
end
