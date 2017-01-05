class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name,       null: false, default: ""
      t.string :contact,    null: false, default: ""
      t.string :phone,      null: false, default: ""
      t.string :telephone,  null: false, default: ""
      t.string :email,      null: false, default: ""
      t.string :website,    null: false, default: ""
      t.text :introduction, null: false, default: ""

      t.timestamps null: false
    end
  end
end
