class Post < ApplicationRecord
  belongs_to :patient
  belongs_to :department
  has_many :opinions
  mount_uploaders :refferal, ImageUploader
  serialize :refferal, JSON

  validates :refferal, :desease_name, :detail, presence: true
end
