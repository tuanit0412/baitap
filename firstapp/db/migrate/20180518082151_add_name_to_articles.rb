class AddNameToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :column, :string
  end
end
