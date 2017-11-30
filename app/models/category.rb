class Category < ApplicationRecord
  has_many :sources
  has_many :users, through: :sources
end
