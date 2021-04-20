class QuestionPrompt < ApplicationRecord
  has_many :user, through: :question_prompt
  has_many :answer_prompts
end
