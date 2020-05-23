class HospitalsController < ApplicationController
  def index
      @q = Hospital.ransack(params[:q])
      @hospitals = @q.result(distinct: true)
      if params[:q][:prefecture_eq].present? && params[:q][:departments_id_eq].present?
        @top = params[:q][:prefecture_eq] + "で" + Department.find(params[:q][:departments_id_eq]).name + "が受診できる医療機関"
      elsif params[:q][:prefecture_eq].present?
        @top = params[:q][:prefecture_eq] + "の医療機関"
      elsif params[:q][:departments_id_eq].present?
        @top = Department.find(params[:q][:departments_id_eq]).name + "の受診ができる医療機関"
      else
        @top = "医療機関一覧"
      end
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
    current_doctor.hospital_id = @hospital.id
    current_doctor.save
    redirect_to @hospital
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])
    @hospital.update(hospital_params)
    redirect_to @hospital
  end

  def destroy
    hospital = Hospital.find(params[:id])
    hospital.destroy
  end

  private
    def hospital_params
      params.require(:hospital).permit(:name, :name_kana, :founder, :founder_kana, :administer, :administer_kana, :post_code, :prefecture, :address, :phone_number, :homepage, :description, :image, { department_ids:[] })
    end
end
