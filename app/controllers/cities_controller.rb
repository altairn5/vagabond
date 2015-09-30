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
    @allPosts = Post.all.order(created_at: :desc)
    @length = 1000

  end

  def destroy
  end

  def edit
  end

  def update
  end
end
