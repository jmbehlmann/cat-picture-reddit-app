class MakeVotesUnique < ActiveRecord::Migration[7.0]
  def change
    add_index :votes, [:user_id, :post_id], unique: true
  end
end
