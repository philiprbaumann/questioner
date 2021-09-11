class SurveysController < ApplicationController

  def index
    # I worked with this SQL query for sometime to return a percentage. It's feasible, but seemed like it was worse performance. 
    @answer_data = Answer.fetch_data
    @surveys = Survey.all()
    @answer = Answer.new()
  end

  def new
    @survey = Survey.new()
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to :root
    else
      
      render 'new'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:question)
  end

end
