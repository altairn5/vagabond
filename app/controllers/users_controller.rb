class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)
    session[:user_id] = @user.id
    @current_user = @user
    redirect_to "/users/#{@user.id}"
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end



end
