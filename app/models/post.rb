class Post < ApplicationRecord
  belongs_to :patient
  belongs_to :department

  mount_uploaders :refferal, ImageUploader
  serialize :refferal, JSON
end
