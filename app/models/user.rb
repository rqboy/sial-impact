class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :initiatives_ent, class_name: 'Initiative', foreign_key: "referent_id"
  has_many :initiatives_ges, class_name: 'Initiative', foreign_key: "user_id"
  mount_uploader :photo, PhotoUploader
end
