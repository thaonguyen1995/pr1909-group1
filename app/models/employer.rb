class Employer < ApplicationRecord
  has_one :user
  has_many :job_posts
end
