class Employer < ApplicationRecord
  belongs_to :user
  has_many :job_post
  validates :user_id, presence: true, uniqueness: true
  validates :company_name, length: { maximum: 70 }
end
