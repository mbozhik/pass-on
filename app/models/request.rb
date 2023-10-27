class Request < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :direction, presence: true
end
