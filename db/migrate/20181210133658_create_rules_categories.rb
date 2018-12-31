class CreateRulesCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :rules_categories do |t|
      t.string :criteria
      t.string :field_none
      t.string :field_is
      t.string :field_isnt
      t.string :field_contains
      t.string :field_dcontains
      t.string :field_startswith
      t.string :field_endswith
      t.string :field_isempty
      t.string :field_isntempty
      t.string :field_between
      t.string :field_notbetween
      t.timestamps
    end

  end
end
