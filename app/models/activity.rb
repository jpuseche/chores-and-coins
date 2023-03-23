class Activity < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :son, optional: true

  validates :name, presence: true
  validates :description, presence: true
end
