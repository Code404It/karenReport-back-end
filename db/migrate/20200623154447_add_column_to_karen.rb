class AddColumnToKaren < ActiveRecord::Migration[6.0]
  def change
    add_column :karens, :damn_karen, :integer

  end
end
