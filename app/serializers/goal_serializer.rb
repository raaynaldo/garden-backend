class GoalSerializer < ActiveModel::Serializer
  attributes :id, :task, :is_done, :user
end
