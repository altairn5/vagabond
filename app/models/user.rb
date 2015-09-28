class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, :password_digest, presence: true, confirmation: true
	validates :email, uniqueness: true
	validates :password, length: {minimum: 1}

	has_secure_password
end
