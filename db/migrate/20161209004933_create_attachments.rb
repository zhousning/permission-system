class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file, null: false, default: ""

      t.references :product

      t.timestamps null: false
    end
  end
end
