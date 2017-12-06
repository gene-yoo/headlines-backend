class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.newsfeed
    render json: articles
  end

  def create
    article = Article.new(article_params)
    if article.valid?
      article.save
      user = User.find(params[:article][:user_id])
      render json: user
    else
      render json: {error: 'You might rethink yoself.', status: 422}
    end
  end

  def update
    article = Article.find(params[:id])
    article.public = !article.public
    article.save
    user = User.find(article.user_id)
    render json: user
  end

  def destroy
    article = Article.find(params[:id])
    user = User.find(article.user_id)
    article.destroy
    render json: user
  end

  private

  def article_params
    params.require(:article).permit(:author, :title, :description, :url, :urlToImage, :publishedAt, :user_id, :public)
  end

end
