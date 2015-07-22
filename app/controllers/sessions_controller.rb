class SessionsController < ApplicationController
  def new
  end

  def create
  	  user = User.find_by(email: params[:session][:email].downcase)
  if user && authenticate(user, params[:session][:password_digest])
    # Sign the user in and redirect to the user's show page.
    #flash[:error] = 'correct'
    #sign_in user
    session[:user_id] = user.id
    redirect_to user
  else
    # Create an error message and re-render the signin form.
    flash[:error] = 'Invalid email/password combination'
    render 'new'
  end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/'
  end

	private 
	def authenticate(user, password)
		if user.password_digest == password
			return true
		else
			return false	
			end	
	end
end
