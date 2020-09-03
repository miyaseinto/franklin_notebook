class AssessmentsController < ApplicationController

  def new
    @diary = Diary.find(params[:diary_id])
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(assessment_params)
    if @assessment.valid?
      @assessment.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

  def assessment_params
    params.require(:assessment).permit(:checkbox1, :checkbox2, :checkbox3, :checkbox4, :checkbox5, :checkbox6, :checkbox7, :checkbox8, :checkbox9, :checkbox10)
  end

end
