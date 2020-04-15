class Employer < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true, uniqueness: true
  validates :company_name, length: { maximum: 70 }
end
