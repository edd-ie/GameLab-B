class CreateLogics < ActiveRecord::Migration[7.0]
  def change
    create_table :logics do |t|
      t.string :name
      t.string :description
    end
  end
end
