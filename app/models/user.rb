class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable

  enum user_type: { candidate: 1, employer: 2, admin: 3 }

  # Validates
  validates :name, presence: true
  validates :user_type, presence: true, inclusion: { in: %w(candidate employer admin) }
  mount_uploader :avatar, AvatarUploader

  USER_TYPE = { :Candidate => "candidate", :Employer => "employer" }.freeze
end
