class AddTaskIdToJob < ActiveRecord::Migration
  def change
        add_column :jobs, :task_id, :integer

  end
end
