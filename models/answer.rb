class Answer < ActiveRecord::Base
	belongs_to :question
	has_many :answervotes
end