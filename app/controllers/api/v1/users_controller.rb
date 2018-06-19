class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(get_params)

    if @user.valid?
     @user.save
     render json: @user
    else
      render json: {error: "something went wrong!"}
    end
  end

  private

  def get_params
    params.permit(:first_name, :last_name, :email, :password, :phone)
  end
end
