class AddInstockToProduct < ActiveRecord::Migration
  def change
    add_column :products, :instock, :integer, default: 5
  end
end
