class CitiesController < ApplicationController
  def index
  end

  def new
    @city = City.new
  end

  def create
  end

  def show
    @city = City.find(params[:id])
    @allPosts = Post.all.order(created_at: :desc)
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
