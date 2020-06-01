class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_q

  def set_q
    @q = Hospital.ransack(params[:q])
  end

  def after_sign_in_path_for(resource)
    case resource
    when Doctor
      doctor_path(current_doctor)
    when Patient
      patient_path
    when Admin
      rails_admin_path
    end
  end

  def after_update_path_for(resource)
    case resource
    when Doctor
      doctor_path(current_doctor)
    when Patient
      patient_path
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:family_name, :first_name, :family_name_kana, :first_name_kana, :gender, :date_of_birth, :phone_number, :registration_number, :registration_date, :description, :image, :hospital_id, :department_id])
      devise_parameter_sanitizer.permit(:account_update, keys:[:family_name, :first_name, :family_name_kana, :first_name_kana, :gender, :date_of_birth, :phone_number, :registration_number, :registration_date, :description, :image, :hospital_id, :department_id])
    end
end
