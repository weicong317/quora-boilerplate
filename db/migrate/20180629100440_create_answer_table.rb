
class CreateAnswerTable < ActiveRecord::Migration[5.0]
	def change
		create_table :answers do |t|
			t.belongs_to :question
			t.string :reply
			
			t.timestamps
		end
	end
end

