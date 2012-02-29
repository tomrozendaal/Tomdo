class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :priority
      t.integer :date
      t.text :description

      t.timestamps
    end
  end
end
