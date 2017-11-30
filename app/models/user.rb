class User < ApplicationRecord
  has_many :user_sources
  has_many :sources, through: :user_sources
  has_many :categories, through: :sources
  has_secure_password validations: false

end
