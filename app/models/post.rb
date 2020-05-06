class Post < ApplicationRecord
  belongs_to :patient
  belongs_to :department
end
