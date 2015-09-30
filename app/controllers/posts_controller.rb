class PostsController < ApplicationController

  before_action :logged_in?, only: [:new, :create, :destroy, :edit, :update]

  def new
    @post = Post.new
    @current_user = current_user
    @city = City.find_by_id(params[:city_id])
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
    @city = City.find_by_id(params[:city_id])
  end

  def create
    @post = Post.new(post_params)
    @city = City.find_by_id(params[:city_id])
    if @post.save
      redirect_to "/cities/#{@city.id}/posts/#{@post.id}"
    else
      render :new
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    @city = City.find_by_id(params[:city_id])

    redirect_to "/cities/#{@city.id}"
  end

  def edit
    @post = Post.find_by_id(params[:id])
    @current_user = current_user
    @city = City.find_by_id(params[:city_id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update(post_params)
    @city = City.find_by_id(params[:city_id])

    redirect_to "/cities/#{@city.id}/posts/#{@post.id}"
  end

  def index
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :city_id, :user_id)
  end
  
end
