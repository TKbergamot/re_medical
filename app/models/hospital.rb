class Hospital < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :doctors
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
