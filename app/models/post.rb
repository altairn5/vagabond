class Post < ActiveRecord::Base

	attr_accessor :keywords
  	@@alchemy_url ||= "http://gateway-a.watsonplatform.net/calls/text/TextGetRankedKeywords"

  	def get_keywords
    res = Typhoeus.get(
      @@alchemy_url,
      	params: {
        apikey: "d3f607d969d5a875bb1e2e20528b67328b670b0b",
        text: content,
        maxRetrieve: 10,
        outputMode: "json"
      	}
    	)
    	# words = JSON.parse(res.body)["keywords"].map { |w| w['text'] }
    	# @keywords = words.join(" | ")
      puts "keyword search: " + res.body.to_s
      kwords = JSON.parse(res.body)
      puts  "drilling down:" + kwords['keywords'].to_s
      if kwords['keywords'] != nil
          words = kwords['keywords'].map { |w| w['text'] }
          @keywords = words.join(" | ")
      end
  	end

	belongs_to :user
	belongs_to :city

	validates :title, length: { maximum: 200 }

end


