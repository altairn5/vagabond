class Post < ActiveRecord::Base



	belongs_to :user
	belongs_to :city

	validates :title, length: { maximum: 200 }

end

# attr_accessor :keywords
#   @@alchemy_url ||= ENV["ALCHEMY_URL"]

#   def get_keywords
#     res = Typhoeus.get(
#       @@alchemy_url,
#       params: {
#         apikey: ENV["ALCHEMY_APIKEY"],
#         text: content,
#         maxRetrieve: 10,
#         outputMode: "json"
#       }
#     )
#     words = JSON.parse(res.body)["keywords"].map { |w| w['text'] }
#     @keywords = words.join(" | ")
#   end