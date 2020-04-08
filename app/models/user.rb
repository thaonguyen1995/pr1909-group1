class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable

  # Validates
  validates :name, presence: true
  validates :user_type, presence: true, inclusion: { in: %w(candidate employer admin) }

  # contraint
  has_one :employer
  has_one :candidate

  USER_TYPE = %w(candidate employer).freeze
end
