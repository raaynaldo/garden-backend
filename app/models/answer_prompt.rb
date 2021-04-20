class AnswerPrompt < ApplicationRecord
  belongs_to :question_prompt
  belongs_to :user
end
