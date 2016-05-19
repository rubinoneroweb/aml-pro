class AddColumnsToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :date_start, :datetime
    add_column :tasks, :priority, :integer
  end
end
