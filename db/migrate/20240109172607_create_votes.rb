class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :direction

      t.timestamps
    end
  end
end
