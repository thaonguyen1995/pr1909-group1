class Employer < ApplicationRecord
  has_one :user
  has_many :job_posts
  validates :company_name, :user_id, presence: true
end
