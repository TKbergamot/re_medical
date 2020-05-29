class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader
  has_many :opinions
  has_many :doctor_comments
  belongs_to :department
  belongs_to :hospital, optional: true

  enum gender: { male: 0, female: 1}

  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :gender, :date_of_birth, :registration_number, :registration_date, presence: true
end
