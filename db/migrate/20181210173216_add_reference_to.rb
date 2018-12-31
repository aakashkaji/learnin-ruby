class AddReferenceTo < ActiveRecord::Migration[5.2]
  def change

    add_reference :categories, :rules_category, foreign_key: true


  end
end
