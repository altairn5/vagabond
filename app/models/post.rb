class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	validates :title, length: { maximum: 200 }

end
