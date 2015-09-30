module CitiesHelper
	def truncate?(text)
		return text.length > @length
	end

	def relative_time(post)
		return post.created_at
	end
end
