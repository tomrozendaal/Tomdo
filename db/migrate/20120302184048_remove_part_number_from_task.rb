class RemovePartNumberFromTask < ActiveRecord::Migration
  def up
    remove_column :tasks, :date
  end

  def down
    add_column :tasks, :date, :integer
  end
end
