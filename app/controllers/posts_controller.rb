class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def index
  end
end
