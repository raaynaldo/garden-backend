class User < ApplicationRecord
  has_many :answer_prompts
  has_many :question_prompts, through: :answer_prompts
  has_many :goals
end
