class Activity < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :level, numericality: { only_integer: true }
end
