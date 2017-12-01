class User < ApplicationRecord
  has_secure_password validations: false

  has_many :user_sources
  has_many :sources, through: :user_sources

  has_many :user_categories
  has_many :categories, through: :user_categories

  alias_attribute :passwordConfirmation, :password_confirmation
  alias_attribute :preferredSources, :source_ids
  alias_attribute :preferredCategories, :category_ids

  def source_slugs
    self.sources.map { |source| source.slug }
  end

  def category_names
    self.categories.map { |cat| cat.name }
  end

  def token
    JWT.encode({username: self.username}, ENV['secret'], ENV['algo'])
  end

end
