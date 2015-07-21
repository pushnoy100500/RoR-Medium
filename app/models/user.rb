class User < ActiveRecord::Base
	validates :user_name, :email, presence: true
end
