module SessionsHelper 
	def login(user)
		session[:user_id] = user.id
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_id(session[:user_id])
	end

	def logged_in? 
		if current_user == nil
			redirect_to "/sign_in"
		end
	end

	def signed_in?
		if current_user == nil
			return false
		else
			return true
		end
	end

	def correct_user(post)
		if signed_in?
			if @current_user.id == post.user_id
				return true
			end
		else
			return false
		end
	end

	def logout
		@current_user = session[:user_id]= nil
	end
	
	def if_right_user
	  @current_user = exactUser
	  if @current_user = !@current_user
	    redirect_to "/sign_in"
	  end  
	end
	
end
