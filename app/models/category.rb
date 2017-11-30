class Category < ApplicationRecord
  has_many :user_sources
  has_many :users, through: :user_sources

  has_many :source_categories
  has_many :sources, through: :source_categories

end
