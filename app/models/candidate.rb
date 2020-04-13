class Candidate < ApplicationRecord
  belongs_to :user
  validate :validate_age
  validates :user_id, presence: true, uniqueness: true
  validates :phone, length: { maximum: 16 }, format: { with: /[-+ 0-9]/ }

  private

  def validate_age
    if date_of_birth.present? && date_of_birth > 18.years.ago
      errors.add(:date_of_birth, 'You should be over 18 years old.')
    end
  end
end
