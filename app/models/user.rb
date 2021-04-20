class User < ApplicationRecord
  has_many :answer_prompts, through: :question_prompt
  has_many :goals
end
