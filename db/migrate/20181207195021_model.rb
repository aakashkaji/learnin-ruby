class Model < ActiveRecord::Migration[5.2]
  def self.up
    create_table :accounts do |t|
      t.string :account_type, :default => 'saving'
      t.string :holder_name, :null => false
      t.float :amount, :default => 0
    end

    end

  def self.down

  end
end
