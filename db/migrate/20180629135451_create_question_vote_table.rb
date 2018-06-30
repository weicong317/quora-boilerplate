
class CreateQuestionVoteTable < ActiveRecord::Migration[5.0]
	def change
		remove_column :users, :vote, :integer, default: 0
		remove_column :questions, :vote, :integer, default: 0
		add_column :users, :vote, :integer
		create_table :question_votes do |t|
			t.integer :vote, default: 0
			t.belongs_to :user
			t.belongs_to :question
			t.timestamps
		end
	end
end

