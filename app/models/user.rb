class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable
  enum user_type: {:candidates => "candidates", :employers => "employers"}

  # Validates
  validates :name, presence: true
  validates :user_type, presence: true, inclusion: { in: ["candidates", "employers"] }

  # contraint
  has_one :employer
  has_one :candidate

  USER_TYPE = { "Candidate" => :candidates, "Employer" => :employers }.freeze
end
