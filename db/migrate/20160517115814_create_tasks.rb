class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :operator_id
      t.integer :metalwork_id
      t.integer :order_id
      t.integer :quantity
      t.float :speed
      t.boolean :done

      t.timestamps null: false
    end
  end
end
