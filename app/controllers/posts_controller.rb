# frozen_string_literal: true
class PostsController < ApplicationController
  before_action :authenticate_patient!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order(id: "desc").paginate(page: params[:page], per_page: 5)
    @top = "オピニオン依頼一覧"
    if params[:q].present?
      if params[:q][:department_id_eq].present?
      @top = Department.find(params[:q][:department_id_eq]).name + "のオピニオン依頼"
      end
    else
      @top = "オピニオン依頼一覧"
    end
  end

  def show
    @post = Post.find(params[:id])
    @q = Post.ransack(params[:q])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.patient_id = current_patient.id
    @post.department_id = 1
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def infiniteScrolling
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      format.js
    end
  end

  private
    def post_params
      params.require(:post).permit(:desease_name, :detail, :patient_id, :department_id, refferal: [])
    end
end
