class RuleAssignment < ApplicationRecord

   serialize :optional, Array
  validates :rule_name, length: { maximum: 100 }, :uniqueness => true, :presence => true, on: :create


  def serialize(attr_name)
    # todo here override serialize method
    # coder = if [:load, :dump].all? { |x| class_name.respond_to?(x) }
    #           class_name
    #         else
    #           Coders::YAMLColumn.new(class_name)
    #         end



  end

end
