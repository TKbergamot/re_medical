class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader
  has_many :opinions
  has_many :doctor_comments
  belongs_to :department
end
