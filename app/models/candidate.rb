class Candidate < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  mount_uploader :cv, CvUploader
end
