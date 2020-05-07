class OpinionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    opinion = Opinion.new(opinion_params)
    opinion.doctor_id = current_doctor.id
    opinion.save
    redirect_to post_path(opinion.post_id)
  end

  def edit
  end

  private
    def opinion_params
      params.require(:opinion).permit(:content, :post_id)
    end
end
