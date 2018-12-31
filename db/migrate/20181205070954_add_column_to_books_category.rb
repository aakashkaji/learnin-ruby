class AddColumnToBooksCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :type, :category
    rename_column :books, :authors_id, :author_id

  end
end
