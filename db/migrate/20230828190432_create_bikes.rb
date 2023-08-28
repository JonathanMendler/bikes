class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :manufacturer
      t.string :model
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
