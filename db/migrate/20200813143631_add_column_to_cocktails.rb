class AddColumnToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image, :text
  end
end
