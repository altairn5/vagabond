class UsersController < ApplicationController

  before_action :logged_in?, only: [:show]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    @current_user = @user
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find_by_id(params[:id])
    @posts = @user.posts
    @city = City.find_by_id(@user.city_id)
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to "/users/#{@user.id}"
  end

  def welcome
    @sfPosts = Post.all.where(:city_id => 1).length
    @londonPosts = Post.all.where(:city_id => 2).length
    @GPosts = Post.all.where(:city_id => 3).length
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :city_id)
  end

end
