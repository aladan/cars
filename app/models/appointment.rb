class Appointment < ApplicationRecord
  scope :ordered, ->(){ order('created_at DESC') }

  validates :title, presence: true
end
