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
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
