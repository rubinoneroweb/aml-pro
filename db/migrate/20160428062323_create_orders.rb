class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date_ric
      t.datetime :date_cons
      t.text :note
      t.integer :article_id
      t.integer :customer_id
      t.float :price

      t.timestamps null: false
    end
  end
end
