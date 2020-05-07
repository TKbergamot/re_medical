class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)
    @hospital.save
    redirect_to @hospital
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def hospital_params
      params.require(:hospital).permit(:name, :name_kana, :founder, :founder_kana, :administer, :administer_kana, :post_code, :address, :phone_number, :homepage, :description, :image)
    end
end
