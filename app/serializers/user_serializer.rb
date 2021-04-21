class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :photo_url, :email
end
