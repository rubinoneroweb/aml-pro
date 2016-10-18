class AddCustomerIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :customer_id, :integer
  end
end
