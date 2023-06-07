class CreateJumps < ActiveRecord::Migration[7.0]
  def change
    create_table :jumps do |t|
      t.integer :score
      t.integer :user_id
    end
  end
end
