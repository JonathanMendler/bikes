class AddImageToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :image, :text
    change_column :bikes, :price, :decimal, precision: 7, scale: 2
  end
end
