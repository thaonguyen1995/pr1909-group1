class JobLocation < ApplicationRecord
  has_many :job_posts
  validates :location, presence: true
end
