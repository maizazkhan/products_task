class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :tag
      t.integer :discount
      t.string :category
      t.timestamps
    end
  end
end
