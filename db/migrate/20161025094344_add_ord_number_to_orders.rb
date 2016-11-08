class AddOrdNumberToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ord_number, :string
  end
end
