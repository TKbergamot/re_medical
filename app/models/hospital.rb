class Hospital < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :doctors
  has_many :categorizations
  has_many :departments, through: :categorizations
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  include JpPrefecture
  jp_prefecture :prefecture, method_name: :pref

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
