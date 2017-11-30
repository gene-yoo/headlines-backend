class Source < ApplicationRecord
  has_many :user_sources
  has_many :users, through: :user_sources

  belongs_to :category
end
