class Department < ApplicationRecord
  has_many :categorizations
  has_many :hospitals, through: :categorizations
end
