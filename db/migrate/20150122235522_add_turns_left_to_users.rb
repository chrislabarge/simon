class AddTurnsLeftToUsers < ActiveRecord::Migration
  def change
    add_column :users, :turns_left, :text
  end
end
