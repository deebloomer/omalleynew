class AddRunningOrderToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :running_order, :integer
  end

  def down
    remove_column :projects, :running_order, :integer

  end
end
