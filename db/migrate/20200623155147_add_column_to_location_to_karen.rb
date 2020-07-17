class AddColumnToLocationToKaren < ActiveRecord::Migration[6.0]
  def change
    add_column :karens, :location_id, :integer

  end
end
