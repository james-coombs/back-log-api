class LogSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :players, :stage, :notes, :passed, :user
end
