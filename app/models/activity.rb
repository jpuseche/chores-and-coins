class Activity < ApplicationRecord
  validates :name, presence: true
  # validates :user_id, presence: true
  # validates :completed, presence: true
  # validates :level, presence: true
end
