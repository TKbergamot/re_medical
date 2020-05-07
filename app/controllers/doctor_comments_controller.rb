class DoctorCommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    doctor_comment = DoctorComment.new(doctor_comment_params)
    doctor_comment.doctor_id = current_doctor.id
    doctor_comment.save
    redirect_to post_path(doctor_comment.opinion.post_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def doctor_comment_params
      params.require(:doctor_comment).permit(:content, :opinion_id)
    end
end
