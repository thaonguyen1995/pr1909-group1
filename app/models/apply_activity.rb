class ApplyActivity < ApplicationRecord
  has_one :candidate
  has_one :job_post
end
