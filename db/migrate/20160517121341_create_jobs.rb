class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :operator_id
      t.datetime :started_at
      t.datetime :completed_at
      t.integer :metalwork_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
