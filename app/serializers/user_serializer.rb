class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :source_slugs, :category_names, :token, :source_ids, :articles, :sources
end
