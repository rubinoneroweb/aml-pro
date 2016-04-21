class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :code
      t.text :description
      t.string :picture
      t.string :drawing

      t.timestamps null: false
    end
  end
end
