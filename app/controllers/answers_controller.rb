class AnswersController < ApplicationController

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def index
    @answers = Answer.all()
  end

  private

  def answer_params
    params.require(:answer).permit(:survey_id, :response)
  end

end
