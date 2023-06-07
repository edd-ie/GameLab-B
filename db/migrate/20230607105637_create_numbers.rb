class CreateNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :numbers do |t|
      t.integer :score
      t.integer :timestamp
      t.integer :user_id
    end
  end
end
