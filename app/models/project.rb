class Project < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
end
