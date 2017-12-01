class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :source_slugs, :category_names, :token
end
