class User < ActiveRecord::Base
	belongs_to :city

	has_many :posts
	has_many :comments, dependent: :destroy

	validates :first_name, :last_name, :email, :password_digest, presence: true, confirmation: true
	validates_uniqueness_of :email
	validates :password, length: {minimum: 1}

	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
	    @user.try(:authenticate, params[:password])
	end
end
