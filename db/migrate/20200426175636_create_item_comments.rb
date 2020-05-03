class CreateItemComments < ActiveRecord::Migration[5.2]
  def change
    create_table :item_comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :impression

      t.timestamps
    end
  end
end
