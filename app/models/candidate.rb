class Candidate < ApplicationRecord
  has_one :user
  has_many :apply_activities
  validates :candidate_name, :user_id, presence:true
end
