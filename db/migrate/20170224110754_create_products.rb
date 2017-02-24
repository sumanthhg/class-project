class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :category
      t.date :release_date
      t.boolean :is_available
      t.integer :stock

      t.timestamps
    end
  end
end
