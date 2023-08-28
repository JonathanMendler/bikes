class ChangePriceDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :bikes, :price, :integer, precision: 7, scale: 2
  end
end
