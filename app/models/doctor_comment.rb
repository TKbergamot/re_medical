class DoctorComment < ApplicationRecord
  belongs_to :doctor
  belongs_to :opinion
end
