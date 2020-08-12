class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :status
      t.float :total

      t.timestamps
    end
  end
end
