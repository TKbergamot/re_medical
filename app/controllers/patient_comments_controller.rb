class PatientCommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    patient_comment = PatientComment.new(patient_comment_params)
    patient_comment.patient_id = current_patient.id
    patient_comment.save
    redirect_to post_path(patient_comment.opinion.post_id)
  end

  def edit
  end

  private
    def patient_comment_params
      params.require(:patient_comment).permit(:content, :opinion_id)
    end
end
