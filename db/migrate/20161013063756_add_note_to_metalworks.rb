class AddNoteToMetalworks < ActiveRecord::Migration
  def change
    add_column :metalworks, :note, :text
  end
end
