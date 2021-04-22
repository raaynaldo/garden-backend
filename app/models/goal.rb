class Goal < ApplicationRecord
  belongs_to :user

  scope :by_user_uid, ->(user_id) { where("user_id = ?", user_id) }

  after_initialize :init

  private

  def init
    self.is_done ||= false
  end
end
