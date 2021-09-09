class AnswerController < ApplicationController

  def new
    @answer = Answer.new()
  end

  def create
    @answer = Answer.new()
    if @answer.save
      redirect_to :root
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :response)
  end

end
