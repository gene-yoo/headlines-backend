class Article < ApplicationRecord
  belongs_to :user
  alias_attribute :urlToImage, :image_url
  alias_attribute :publishedAt, :published_at
end
