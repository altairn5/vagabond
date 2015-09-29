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
    @city = City.find_by_id(@user.cities_id)
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
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :cities_id)
  end

end
