class ApplyActivity < ApplicationRecord
  has_one :candidate
  has_one :job_post
  validates :job_post_id, :candidate_id, presence: true
end
