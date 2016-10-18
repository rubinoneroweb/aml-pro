class AddToolIdToMetalworks < ActiveRecord::Migration
  def change
        add_column :metalworks, :tool_id, :integer
  end
end
