class Opinion < ApplicationRecord
  belongs_to :post
  belongs_to :doctor
  has_many :doctor_comments
  has_many :patient_comments

  validates :content, presence: true
end
