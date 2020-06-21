class CreateKarens < ActiveRecord::Migration[6.0]
  def change
    create_table :karens do |t|
      t.string :title
      t.string :incident

      t.timestamps
    end
  end
end
