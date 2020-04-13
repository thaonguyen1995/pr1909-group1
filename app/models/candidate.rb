class Candidate < ApplicationRecord
  belongs_to :user
  validate :validate_age
  validates :user_id, presence: true, uniqueness: true
  validates :candidate_fullname, length: { maximum: 40 }
  validates :phone, length: { maximum: 20 }

  private

  def validate_age
    if date_of_birth.present? && date_of_birth > 18.years.ago.year
      errors.add(:date_of_birth, 'You should be over 18 years old.')
    end
  end
end
