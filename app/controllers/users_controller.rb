class UsersController < ApplicationController
  def index
    render text: 'Hello World'
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
