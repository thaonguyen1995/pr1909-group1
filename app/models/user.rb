class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Validates
  validates :name, presence: true
  validates :user_type, presence: true, inclusion: { in: %w(Candidate Employer Admin) }

  USER_TYPE = %w{ Candidate Employer }
end
