class Department < ApplicationRecord
  has_many :categorizations
  has_many :hospitals, through: :categorizations
  has_many :posts
  has_many :doctors
end
