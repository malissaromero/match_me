class UsersController < ApplicationController
  def index
    @users = User.all
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 200
    else
      render json: "error!"
    end
  end

  def update
    @user = User.find(user_params[:id])
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: "error!"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: "success"
  end

  private
    def user_params
      params.require(:user).permit(:facebook_id, :name, :location, :photo_url)
    end
end
