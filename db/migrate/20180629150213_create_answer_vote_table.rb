class CreateAnswerVoteTable < ActiveRecord::Migration[5.0]
	def change
		create_table :answervotes do |t|
			t.belongs_to :user
			t.belongs_to :answer
			t.timestamps
		end
		remove_column :questionvotes, :vote, :integer, default: 0
	end
end

