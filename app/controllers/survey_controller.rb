class SurveyController < ApplicationController

  def index
    @surveys = Survey.joins(:answers).select('surveys.id, surveys.question, COUNT(answers) as total_answers')
  end

end
