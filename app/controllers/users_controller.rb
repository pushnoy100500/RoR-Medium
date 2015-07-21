class UsersController < ApplicationController
	def index

	end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end
  def create 
  	@user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

private
 	def user_params
    params.require(:user).permit(:user_name, :email, :password_digest, :image_url)
 	 end

end
