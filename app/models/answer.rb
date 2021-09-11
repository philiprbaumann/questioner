class Answer < ApplicationRecord
    belongs_to :survey

    validates :response, inclusion: [true, false]
    # belongs_to :user    
    # Uncomment once authentication is added.

    # Method to fetch the percentages of answers that are yes or no for each survey as well as total count of answers.
    def self.fetch_data
        answers = Answer.joins(:survey).select('survey_id, COUNT(*) as total_count, SUM(response) AS yes_count').group(:survey_id)
        answer_data = {}
        answers.each do |a|
            answer_data[a.survey_id] = {
              'pct': (a.yes_count.to_f/a.total_count * 100).round(2), 
              'total_ct': a.total_count
            }
        end
        return answer_data
    end

end
