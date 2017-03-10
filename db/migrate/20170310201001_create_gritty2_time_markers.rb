class CreateGritty2TimeMarkers < ActiveRecord::Migration
  def change
    create_table :gritty2_time_markers do |t|
      t.decimal :time

      t.timestamps
    end
  end
end
