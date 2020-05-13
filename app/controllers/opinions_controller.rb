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
    @opinion = Opinion.find(params[:id])
  end

  def update
    @opinion = Opinion.find(params[:id])
    @opinion.update(opinion_params)
    redirect_to post_path(@opinion.post_id)
  end

  def destroy
    opinion = Opinion.find(params[:id])
    opinion.destroy
  end

  private
    def opinion_params
      params.require(:opinion).permit(:content, :post_id)
    end
end
