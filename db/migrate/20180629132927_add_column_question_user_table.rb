
class AddColumnQuestionUserTable < ActiveRecord::Migration[5.0]
	def change
		add_column :users, :vote, :integer
		add_column :questions, :vote, :integer
	end
end

