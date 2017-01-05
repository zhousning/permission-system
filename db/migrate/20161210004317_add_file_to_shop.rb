class AddFileToShop < ActiveRecord::Migration
  def change
    add_column :shops, :file, :string, null: false, default: ""
  end
end
