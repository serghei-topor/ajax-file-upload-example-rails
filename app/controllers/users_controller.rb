class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.create user_params
  end

  def update
    @user.update_attributes user_params
  end

  def destroy
    @user.destroy!
  end

  private
    def user_params
      params.require(:user).permit(:id, :name, :last_name, :avatar)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
