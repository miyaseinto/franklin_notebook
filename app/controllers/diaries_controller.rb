class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :show, :update, :destroy]

  def index
    @diaries = Diary.where(user_id: current_user.id).all.order('date DESC')
    @target = Target.where(user_id: current_user.id)
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @diary.update(diary_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    if @diary.destroy
      redirect_to root_path
    else
      render 'destroy'
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:taskbox1, :taskbox2, :taskbox3, :taskbox4, :taskbox5, :taskbox6, :taskbox7, :taskbox8, :taskbox9, :taskbox10, :plan, :lookingback,:diary, :date).merge(user_id: current_user.id)
  end


  def set_diary
    @diary = Diary.find(params[:id])
  end
end
