class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :machine_id

      t.timestamps null: false
    end
  end
end
