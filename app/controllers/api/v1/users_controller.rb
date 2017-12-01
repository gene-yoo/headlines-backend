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
    binding.pry
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
