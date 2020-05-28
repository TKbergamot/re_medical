class PatientComment < ApplicationRecord
  belongs_to :patient
  belongs_to :opinion

  validates :content, presence: true
end
