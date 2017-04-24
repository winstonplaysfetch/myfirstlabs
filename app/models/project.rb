class Project < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true 
end
