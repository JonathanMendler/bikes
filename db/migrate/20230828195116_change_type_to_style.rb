class ChangeTypeToStyle < ActiveRecord::Migration[7.0]
  def change
    rename_column :bikes, :type, :style
  end
end
