module CitiesHelper
	def truncate?(text)
		return text.length > @length
	end
end
