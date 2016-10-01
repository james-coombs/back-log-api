class LogSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :players, :stage, :notes, :passed,
             :user_id, :created_at
end
