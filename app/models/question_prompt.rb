class QuestionPrompt < ApplicationRecord
  has_many :answer_prompts
  has_many :users, through: :answer_prompts

  enum topic: { understanding: 1, responsibility: 2, space_to_grow: 3 }
  #   Check this blog to understand this enum
  #   https://dev.to/junko911/a-comprehensive-guide-to-rails-enum-5a07
end
