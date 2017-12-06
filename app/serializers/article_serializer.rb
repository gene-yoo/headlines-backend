class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :publishedAt, :description, :url, :image_url, :author, :user_id, :username, :created_at, :updated_at
end
