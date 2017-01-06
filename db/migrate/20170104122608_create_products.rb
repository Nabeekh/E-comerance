class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :quantity
      t.string :name
      t.integer :price
      t.integer :QDiscount
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
