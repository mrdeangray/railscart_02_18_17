class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :title
      t.string :category

      t.timestamps
    end
  end
end
