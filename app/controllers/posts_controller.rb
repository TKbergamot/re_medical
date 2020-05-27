# frozen_string_literal: true
class PostsController < ApplicationController

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true)
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
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.patient_id = current_patient.id
    @post.department_id = 1
    @post.save
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
    def post_params
      params.require(:post).permit(:desease_name, :detail, :patient_id, :department_id, refferal: [])
    end
end
