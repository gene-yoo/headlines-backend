class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :published_at, :description, :url, :image_url, :author, :user_id
end
