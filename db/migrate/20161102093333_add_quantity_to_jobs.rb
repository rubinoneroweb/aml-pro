class AddQuantityToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :q_in, :integer
    add_column :jobs, :q_fin, :integer
  end
end
