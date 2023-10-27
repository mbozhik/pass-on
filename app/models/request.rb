class Request < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :description, presence: true

  validates :from_location, presence: true
  validates :to_location, presence: true
  validates :from_date, presence: true
  validates :to_date, presence: true
  validates :requester_link, presence: true
end
