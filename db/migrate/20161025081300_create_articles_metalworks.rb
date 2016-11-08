class CreateArticlesMetalworks < ActiveRecord::Migration
  def change
    create_table :articles_metalworks do |t|
      t.integer :article_id
      t.integer :metalwork_id
    end
  end
end
