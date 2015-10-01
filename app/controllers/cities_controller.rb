class CitiesController < ApplicationController
  def index
    redirect_to "/"
  end

  def new
    @city = City.new
  end

  def create
  end

  def show
    @city = City.find(params[:id])
    @allPosts = Post.order(created_at: :desc).where(["city_id = #{@city.id}"]).limit(10)
    @length = 1000
    @s_post = single_post

    AlchemyAPI.key = "d3f607d969d5a875bb1e2e20528b67328b670b0b"
    results = AlchemyAPI.search(:keyword_extraction, text: @s_post, maxRetrieve: 10)
    @results = results
    
    end

  def single_post
    @all_posts = Post.order(created_at: :desc).where(["city_id = #{@city.id}"]).limit(10)
    @all_posts.each do |s_post|
    s_post.body 
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
