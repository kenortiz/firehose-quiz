class QuizzesController < ApplicationController

  def index
    @quiz = Quiz.find( :all, :order => "id DESC" )
  end

  def create
    @quiz = Quiz.create(quiz_params)
    if @quiz.invalid?
      flash[:error] = '<strong>Could not save.</strong> The data you enteredd is invalid.'
    end
    redirect_to root_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :answer)
  end

end
