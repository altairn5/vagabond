class PostsController < ApplicationController
  def new
    @post = Post.new

    @current_user = current_user
    @city_id = params[:city_id]
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end

  def create
    @post= Post.create(post_params)
    redirect_to city_post_path(@post.id)
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def index
  end
  private
  def post_params
    params.require(:post).permit(:title, :body, :city_id)
  end
  
end
