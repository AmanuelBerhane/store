class UsersController < ApplicationController
  before_action :authorized
  def index
    @users = User.all
  end

  def create
    @user =User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:username , :password, :phone_number, :email)
  end
end
