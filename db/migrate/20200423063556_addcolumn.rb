class Addcolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name_image, :string
  end
end
