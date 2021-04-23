class AnswerPrompt < ApplicationRecord
  belongs_to :question_prompt
  belongs_to :user

  scope :by_user_uid, ->(user_id) { where("user_id = ?", user_id) }


end
