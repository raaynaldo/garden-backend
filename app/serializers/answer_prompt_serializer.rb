class AnswerPromptSerializer < ActiveModel::Serializer
    attributes :id, :question_prompt, :user, :answer, :created_at

end

  