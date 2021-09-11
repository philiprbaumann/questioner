class AnswersController < ApplicationController

  # Creates a new answer object. Has no new() method as Answer object is instantiated in surveys#index. 
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to :root
    else
      redirect_to :root
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:survey_id, :response)
  end

end
