class PatientsController < ApplicationController
  def show
    if patient_signed_in?
      @patient = current_patient
    elsif doctor_signed_in?
      @patient = Patient.find(params[:id])
    end
  end

  def index
    @patients = Patient.all
  end
end
