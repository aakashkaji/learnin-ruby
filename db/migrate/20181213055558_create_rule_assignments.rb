class CreateRuleAssignments < ActiveRecord::Migration[5.2]
  def self.up
    create_table :rule_assignments do |t|
      t.string :rule_name
      t.string :default_rule
      t.text :optional, array: true
      t.json :assign
      t.string :pattern

      t.timestamps
    end
  end
  def self.down
    drop_table :rule_assignments
  end
end
