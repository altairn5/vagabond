module PostsHelper
	def exactUser
		@current_user = User.find_by_id(session[:user_id])
	end
end
