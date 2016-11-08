class RemoveFriceFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :frice
    add_column :articles, :price, :float
  end
end
