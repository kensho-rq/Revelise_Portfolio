class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :item_image
      t.string :item_title
      t.text :comment

      t.timestamps
    end
  end
end
