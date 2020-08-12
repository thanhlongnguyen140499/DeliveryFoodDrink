class CreateSuggests < ActiveRecord::Migration[5.1]
  def change
    create_table :suggests do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :image
      t.integer :status

      t.timestamps
    end
  end
end
