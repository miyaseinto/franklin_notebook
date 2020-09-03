class TargetsController < ApplicationController
  before_action :set_target, only: [:edit, :update, :destroy]

  def index
    @target = Target.all
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @target.update(target_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @target.destroy
      redirect_to root_path
    else
      render 'destroy'
    end
  end

  private

  def target_params
    params.require(:target).permit(:target).merge(user_id: current_user.id)
  end

  def set_target
    @target = Target.find(params[:id]) 
  end
end
