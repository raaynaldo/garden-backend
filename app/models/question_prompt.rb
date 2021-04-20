class QuestionPrompt < ApplicationRecord
  has_many :answer_prompts
  has_many :users, through: :answer_prompts
end
