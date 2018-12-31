class CreateAakashes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :aakashes do |t|
      t.string :name, null:false
      t.text :field_value, null:false

      t.timestamps
    end
  end
  def self.down
    drop_table :aakashes

  end
end
