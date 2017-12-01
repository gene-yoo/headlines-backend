class Api::V1::AuthController < ApplicationController
  def create
    binding.pry
    user = User.find_by(username: params[:user][:username])

    if user && user.authenticate(params[:user][:password])
       # issue that user a token
       render json: user
     else
       render json: {error: 'You must be playing yoself ... '}, status: 401
     end
  end

  def show
    # user = User.find_by(username: params[:username])
    # if logged_in?
    #    # issue that user a token
    #    render json: user
    #  else
    #    render json: {error: 'You must be playing yoself ... '}, status: 401
    #  end
  end

  def snake
    user = User.find_by(username: params[:username])
    if user
       # issue that user a token
       render json: user
     else
       render json: {error: 'You must be playing yoself ... '}, status: 401
     end
  end

end
