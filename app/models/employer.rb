class Employer < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :job_post, dependent: :destroy
  mount_uploader :company_logo, CompanyLogoUploader

  # validate
=======
  has_many :job_post
>>>>>>> create and validate model job post
  validates :user_id, presence: true, uniqueness: true
  validates :company_name, length: { maximum: 70 }
end
