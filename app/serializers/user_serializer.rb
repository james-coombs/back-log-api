class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :logs
end
