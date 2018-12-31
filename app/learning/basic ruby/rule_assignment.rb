class RuleAssignment

  @json_has = {
      required: "some hardcoded rules",
      optionals: [
          {
              field: "lead_status",
              operators: "contains",
              values:"verified"
          },
          {
              field: "country",
              operators: "is",
              values: "india"
          },
          {
              field: "lead_status",
              operators: "contains",
              values:"verified"
          },
          {
              field: "lead_status",
              operators: "contains",
              values:"verified"
          },
          {
              field: "lead_status",
              operators: "contains",
              values:"verified"
          },
          {
              field: "lead_status",
              operators: "contains",
              values:"verifieds"
          },
          {
              field: "lead_status",
              operators: "contains",
              values:"verified"
          },


      ],
      assign: {
          random: true,
          assign_to:["aakash_user"]
      },

      pattern: "(1 or(2 and 3)"

  }
  @@lead_hash = {:name => "aakash", :source => 2, :email => "aakash@gmail.com", :phone => "981886510", :budget => 2010000, :vendor_remark => "pass", :lead_status => "verified", :country => "india"}

  def initialize(context)
    @pattern = "( ( ( ( ( 1 or 2 and 3 ) and 4 ) or 5 ) and 6 ) and 7 )"
    @json_has = {
        required: "some hardcoded rules",
        optionals: [
            {
                field: "lead_status",
                operators: "contains",
                values:"verified"
            },
            {
                field: "country",
                operators: "is",
                values: "india"
            },
            {
                field: "lead_status",
                operators: "contains",
                values:"verified"
            },
            {
                field: "lead_status",
                operators: "contains",
                values:"verified"
            },
            {
                field: "lead_status",
                operators: "contains",
                values:"verified"
            },
            {
                field: "lead_status",
                operators: "contains",
                values:"verifieds"
            },
            {
                field: "lead_status",
                operators: "contains",
                values:"verified"
            },


        ],
        assign: {
            random: true,
            assign_to:["aakash_user"]
        },

        pattern: "(1 or(2 and 3)"

    }

    @pattern_condition = []

  end
  def set_value_in_pattern(indx, value)
    @pattern = @pattern.gsub(indx.to_s, value)
  end

  def rule_assignment_for_leads
    ind = 0

    for rule in @json_has.fetch(:optionals, [])
      ind = ind + 1
      begin

        case rule.fetch(:operators)

        when 'is', 'contains', '='
          if rule.fetch(:values).include? @@lead_hash.fetch(rule.fetch(:field).to_sym)
            set_value_in_pattern(ind, "true")
          else
            set_value_in_pattern(ind, "false")
          end

        when "isn't", "doesn't contain", "!="
          unless rule.fetch(:values).include? @@lead_hash.fetch(rule.fetch(:field).to_sym)
            set_value_in_pattern(ind, "true")
          else
            set_value_in_pattern(ind, "false")
          end
        when 'is empty'
          if @@lead_hash.fetch(rule.fetch(:field).to_sym).nil?
            set_value_in_pattern(ind, "true")
          else
            set_value_in_pattern(ind, "false")
          end
        when 'is not empty'
          unless @@lead_hash.fetch(rule.fetch(:field).to_sym).nil?
            set_value_in_pattern(ind, "true")
          else
            set_value_in_pattern(ind, "false")

          end
        when 'between'
          #todo check revenue between
        end
      rescue StandardError => e
        puts e
      end
    end
    puts @pattern
  end
end

c = RuleAssignment.new("aakash")

c.rule_assignment_for_leads
json_has = {
    required: "some hardcoded rules",
    optionals: [
        {
            field: "lead_status",
            operators: "contains",
            values:"verified"
        },
        {
            field: "country",
            operators: "is",
            values: "india"
        },
        {
            field: "lead_status",
            operators: "contains",
            values:"verified"
        },
        {
            field: "lead_status",
            operators: "contains",
            values:"verified"
        },
        {
            field: "lead_status",
            operators: "contains",
            values:"verified"
        },
        {
            field: "lead_status",
            operators: "contains",
            values:"verifieds"
        },
        {
            field: "lead_status",
            operators: "contains",
            values:"verified"
        },


    ],
    assign: {
        random: true,
        assign_to:["aakash_user"]
    },

    pattern: "(1 or(2 and 3)"

}



lead_hash = {:name => "aakash", :source => 2, :email => "aakash@gmail.com", :phone => "981886510", :budget => 2010000, :vendor_remark => "pass", :lead_status => "verified", :country => "india"}

# a = true
#
# if ( ( ( ( ( "#{a}" or false and true ) and true ) or false ) and true ) and true )
#   puts "iffffff"
#
# else
#   puts "elseee"
# end
# puts json_has.fetch(:optional, false)
#
# puts json_has.class
#
# str = "( ( ( ( ( 1 or 2 and 3 ) and 4 ) or 5 ) and 6 ) and 7 )"
#
#
# def rule_assign(json_has, lead_hash)
#   str = "( ( ( ( ( 1 or 2 and 3 ) and 4 ) or 5 ) and 6 ) and 7 )"
#   i = 1
#
#
#   for s in json_has.fetch(:optionals, [])
#     begin
#       case s.fetch(:operators)
#
#       when 'is', 'contains', '='
#         if lead_hash.fetch(s.fetch(:field).to_sym) == s.fetch(:values)
#           str = str.gsub(i.to_s, "true")
#         else
#           str = str.gsub(i.to_s, "false")
#         end
#       when "isn't", "doesn't contain", "!="
#         if lead_hash.fetch(s.fetch(:field).to_sym)!= s.fetch(:values)
#           str = str.gsub(i.to_s, "true")
#         else
#           str = str.gsub(i.to_s, "false")
#         end
#       when 'is empty'
#         if lead_hash.fetch(s.fetch(:field).to_sym).nil?
#           str = str.gsub(i.to_s, "true")
#         else
#           str = str.gsub(i.to_s, "false")
#         end
#       when 'is not empty'
#         if lead_hash.fetch(s.fetch(:field).to_sym).nil?
#           str = str.gsub(i.to_s, "false")
#         else
#           str = str.gsub(i.to_s, "true")
#         end
#       end
#     rescue StandardError => e
#       puts e
#     end
#     i = i+1
#     puts i
#
#   end
#   # todo when rule is created then compare if with leads
#   puts "ruless"
#   puts str
#   if eval(str)
#     puts 'rule passif bhbsdhds'
#   else
#     puts 'rules not pass'
#   end
# end
#
# rule_assign(json_has, lead_hash)