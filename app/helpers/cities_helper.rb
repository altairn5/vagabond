module CitiesHelper
	def truncate?(text)
		return text.length > 1000
	end
end
