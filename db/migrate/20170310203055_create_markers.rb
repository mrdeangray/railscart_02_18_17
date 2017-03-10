class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.decimal :time

      t.timestamps
    end
  end
end
