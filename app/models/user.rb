class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, :password_digest, presence: true, confirmation: true
	validates :email, uniqueness: true
	validates :password, length: {minimum: 1}

	has_secure_password

	has_many :posts

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
	    @user.try(:authenticate, params[:password])
	end
end
