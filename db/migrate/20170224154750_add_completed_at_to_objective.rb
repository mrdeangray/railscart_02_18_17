class AddCompletedAtToObjective < ActiveRecord::Migration
  def change
    add_column :objectives, :completed_at, :datetime
  end
end
