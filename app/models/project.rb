class Project < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  validates :name, presence: true, length: { maximum: 32 }
  validates :description, presence: true, length: { maximum: 65535 }
end
