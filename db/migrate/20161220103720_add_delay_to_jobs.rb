class AddDelayToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :delay, :integer
  end
end
