class Candidate < ApplicationRecord
  has_one :user
  has_many :apply_activities
end
