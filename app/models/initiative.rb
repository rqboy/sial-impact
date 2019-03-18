class Initiative < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user, class_name: 'User'
  belongs_to :referent, class_name: 'User'
  has_many :activities
end
