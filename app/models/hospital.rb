class Hospital < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :doctors
end
