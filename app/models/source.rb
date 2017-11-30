class Source < ApplicationRecord
  has_many :user_sources
  has_many :users, through: :user_sources

  has_many :source_categories
  has_many :categories, through: :source_categories

end
