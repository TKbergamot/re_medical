class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :posts
  enum gender: { male: 0, female: 1}

  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :gender, :date_of_birth, presence: true
  validates :phone_number, length: { in: 10..13 }
end
