class UsersController < ApplicationController
	def index
		@users = User.all
	end

  def show
  	
  	if(params[:id])
  		@user = User.find(params[:id])
  	else
  		@user = User.find(session[:user_id])
  	end
  end

  def new
  	@user = User.new
  end

   # GET /users/1/edit
  def edit
  end

  def create 
  	@user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      user = User.find_by_email(@user.email)
      session[:user_id] = user.id
    else
      render 'new'
    end
  end

private
 	def user_params
    params.require(:user).permit(:user_name, :email, :password_digest, :image_url)
 	 end

 	 public
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
