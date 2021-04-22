class QuestionPrompt < ApplicationRecord
  has_many :answer_prompts
  has_many :users, through: :answer_prompts

  enum topic: { gratitude: 1, inner_peace: 2, relationships: 3 }
  #   Check this blog to understand this enum
  #   https://dev.to/junko911/a-comprehensive-guide-to-rails-enum-5a07
end
