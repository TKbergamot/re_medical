class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def update
    current_doctor.update(doctor_params)
    redirect_to current_doctor
  end

  private
    def doctor_params
      params.require(:doctor).permit(:hospital_id)
    end
end
