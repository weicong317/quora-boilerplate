
class RemoveVoteFromUsers < ActiveRecord::Migration[5.0]
	def change
		remove_column :users, :vote, :integer
	end
end

