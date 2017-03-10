class CreateGritty2s < ActiveRecord::Migration
  def change
    create_table :gritty2s do |t|
      t.text :title
      t.decimal :time

      t.timestamps
    end
  end
end
