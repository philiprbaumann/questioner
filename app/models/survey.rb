class Survey < ApplicationRecord
    has_many :answer

    validates_presence_of :question
end
