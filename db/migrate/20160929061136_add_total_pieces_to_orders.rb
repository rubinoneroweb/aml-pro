class AddTotalPiecesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_pieces, :integer
  end
end
