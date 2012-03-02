class AddPartsToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :date, :string
    add_column :tasks, :user_id, :integer
  end
end
