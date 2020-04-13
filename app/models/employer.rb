class Employer < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true, uniqueness: true
  validates :company_name, length: { maximum: 70 }
  validates :company_description, length: { maximum: 1800 }
end
