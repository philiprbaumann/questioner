class User < ApplicationRecord

    # has_many :answer

    validates_presence_of :name

end
