class Tattoo < ApplicationRecord
  belongs_to :master
  belongs_to :user, optional: true
end