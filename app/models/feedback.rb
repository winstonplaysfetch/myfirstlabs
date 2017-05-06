class Feedback < ApplicationRecord
  belongs_to :project
  validates :commenter, length: { maximum: 31 }
  validates :title, presence: true, length: { maximum: 256 }
  validates :body, presence: true, length: { maximum: 65535 }
end
