class User < ApplicationRecord
  has_secure_password validations: false

  has_many :user_sources
  has_many :sources, through: :user_sources

  has_many :user_categories
  has_many :categories, through: :user_categories
end
