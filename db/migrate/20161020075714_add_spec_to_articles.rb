class AddSpecToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :spec, :string
  end
end
