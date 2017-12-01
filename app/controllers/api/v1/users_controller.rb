class Api::V1::UsersController < ApplicationController
  def home
    render json: 'Hello World'
  end

  def index
  end

  def new
    sources = Source.all
    categories = Category.all
    render json: { sources: sources, categories: categories }
  end

  def create
    user = User.new(user_params)

    if user.valid?
      user.save
      redirect_to controller: 'auth', action: 'snake', id: user.id, username: user.username
    else
      render json: {error: 'You might rethink yoself.', status: 422}
    end
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :preferredSources => [], :preferredCategories => [])
  end
end
