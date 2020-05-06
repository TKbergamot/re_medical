class PatientComment < ApplicationRecord
  belongs_to :patient
  belongs_to :opinion
end
