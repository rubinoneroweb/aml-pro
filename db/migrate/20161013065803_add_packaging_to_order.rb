class AddPackagingToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :packaging, :text
  end
end
