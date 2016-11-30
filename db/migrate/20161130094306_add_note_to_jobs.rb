class AddNoteToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :note, :text
  end
end
