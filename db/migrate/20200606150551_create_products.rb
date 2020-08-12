class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
      t.boolean :classify
      t.integer :quantify
      t.string :description

      t.timestamps
    end
  end
end
