class Aakash < ApplicationRecord
  serialize :field_value, Array


  def as_json(options={})
    super(options).reject {|c| c.in? ['updated_at', 'created_at']}
  end
end
