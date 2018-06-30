
class GiveDefaultToVote < ActiveRecord::Migration[5.0]
	def change
		remove_column :users, :vote, :integer
		remove_column :questions, :vote, :integer
		add_column :users, :vote, :integer, default: 0
		add_column :questions, :vote, :integer, default: 0
	end
end

