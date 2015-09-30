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
    @length = 100
    @rel_date = Post.find_by_id(params[:id]).created_at
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
