class AddPriceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :frice, :float
  end
end
