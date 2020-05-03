class AddColumnTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :category_cd, :string
  end
end
