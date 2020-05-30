class PatientCommentsController < ApplicationController
  before_action :authenticate_patient!

  def create
    patient_comment = PatientComment.new(patient_comment_params)
    patient_comment.patient_id = current_patient.id
    patient_comment.save
    redirect_to post_path(patient_comment.opinion.post_id)
  end

  def edit
    @patient_comment = PatientComment.find(params[:id])
  end

  def update
    @patient_comment = PatientComment.find(params[:id])
    @patient_comment.update(patient_comment_params)
    redirect_to post_path(@patient_comment.opinion.post_id)
  end

  def destroy
    patient_comment = PatientComment.find(params[:id])
    patient_comment.destroy
  end

  private
    def patient_comment_params
      params.require(:patient_comment).permit(:content, :opinion_id)
    end
end
