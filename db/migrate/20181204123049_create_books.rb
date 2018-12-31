class CreateBooks < ActiveRecord::Migration[5.2]
  def self.up
    create_table :books do |t|
      t.string :name, :null => false
      t.string :category

      t.timestamps
    end
  end
  def self.down
    drop_table :books
  end
end