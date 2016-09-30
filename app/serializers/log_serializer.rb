class LogSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :players, :stage, :notes
end
