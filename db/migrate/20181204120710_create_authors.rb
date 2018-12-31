class CreateAuthors < ActiveRecord::Migration[5.2]
  def self.up
    create_table :authors do |t|
      t.string :name, :null => false
      t.string :email,:unique => true
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
