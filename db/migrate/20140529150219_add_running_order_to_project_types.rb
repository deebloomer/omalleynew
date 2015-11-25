class AddRunningOrderToProjectTypes < ActiveRecord::Migration
  def up
    add_column :project_types, :running_order, :integer
  end

  def down
    remove_column :project_types, :running_order, :integer
  end
end

