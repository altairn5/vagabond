module PostsHelper
	def exactUser
		@current_user = User.find_by_id(session[:user_id])
	end

	def commentUser(post)
		@comment_user = User.find_by_id(post.user_id)
	end
end
