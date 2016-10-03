class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :logs, :username
end
