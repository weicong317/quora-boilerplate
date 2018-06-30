class RenameQuestionVoteTable < ActiveRecord::Migration[5.0]
	def change
		rename_table :question_votes, :questionvotes
	end
end

