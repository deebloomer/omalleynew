class AddRunningOrderToPhotos < ActiveRecord::Migration
  def up
    add_column :photos, :running_order, :integer
  end

  def down
    remove_column :photos, :running_order, :integer

  end
end
