class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
change_column :karens, :damn_karen, :integer, :default => 0
  end
end








