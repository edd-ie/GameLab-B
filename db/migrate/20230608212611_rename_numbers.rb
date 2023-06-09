class RenameNumbers < ActiveRecord::Migration[7.0]
  def change
    rename_column :numbers, :timestamp, :moves
  end
end
