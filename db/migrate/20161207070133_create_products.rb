class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name,  null: false, default: ""
      t.string :price, null: false, default: ""
      t.text :details, null: false, default: ""

      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :products, [:shop_id, :created_at]
  end
end
