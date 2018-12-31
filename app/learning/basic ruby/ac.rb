
d = '( ( ( ( ( 1 or 2 and 3 ) and 4 ) or 5 ) and 6 ) and 7 )'
(1..6).each do |i|
  d = d.gsub(i.to_s, "true")
  puts i
end



def aakash(*filters)
  params = {}

  filters.flatten.each do |filter|
    case filter
    when Symbol, String
      permitted_scalar_filter(params, filter)
    when Hash
      hash_filter(params, filter)
    end
  end

  unpermitted_parameters!(params) if self.class.action_on_unpermitted_parameters

  params.permit!
end

v = {"rule_name"=>"leads_assign_rule_12", "default_rule"=>"nothing has", "optional"=>[{"field"=>"Lead Status", "operator"=>"contains", "values"=>["google", "ibm"]}, {"field"=>"Country", "operator"=>"contains", "values"=>["india", "usa", "england"]}], "assign"=>{"random"=>true, "assign_to"=>[1, 2, 4, {"apple"=>"aakash"}]}, "pattern"=>"( (1 and 2) or 3 )"}

aakash(v)



def akki
  @rule_criteria.each do |keys, rule_criteria_list|

  for rule_list in rule_criteria_list
    pattern = rule_list.fetch("pattern", "1")

    ind = 0
    for rule in rule_list.fetch("criteria_field", [])
      begin
        ind = ind + 1
        case rule.fetch(:operator)

        when 'is', 'contains', '='
          if rule.fetch(:values).include? @lead_hash.fetch(rule.fetch(:field).to_s)
            pattern = pattern.gsub(ind.to_s, "true")
          else
            pattern = pattern.gsub(ind.to_s, "false")
          end

        when "isn't", "doesn't contain", "!="
          unless rule.fetch(:values).include? @lead_hash.fetch(rule.fetch(:field).to_s)
            pattern = pattern.gsub(ind.to_s, "true")
          else
            pattern = pattern.gsub(ind.to_s,  "false")
          end
        when 'is empty' # check only field blank or not
          if @lead_hash.fetch(rule.fetch(:field).to_s).nil?
            pattern = pattern.gsub(ind.to_s, "true")
          else
            pattern = pattern.gsub(ind.to_s, "false")
          end
        when 'is not empty'
          unless @lead_hash.fetch(rule.fetch(:field).to_s).nil?
            pattern = pattern.gsub(ind.to_s, "true")
          else
            pattern = pattern.gsub(ind.to_s, "false")
          end
        when 'between'
          #todo check revenue between

        else
          #todo when all when block pass
          pattern = pattern.gsub(ind.to_s, "false")
        end
      rescue StandardError => e
        puts e
      end
    end
    # todo if else codition check with pattern
    if eval(pattern)
      # todo assign leads to user
      assign_user = rule_list.fetch("assign", {}).fetch("assign_to_user", [])
      unless assign_user.nil?
        if keys.to_s == 'Vendor'
          @lead.vendor_assignee_id = assign_user.sample
        else
          @lead.client_assignee_id = assign_user.sample
        end
        break
      end
    else
      # todo assign leads those who uploads leads
      if keys.to_s == 'Vendor'
        @lead.vendor_assignee_id = rule_list.fetch("default_user").sample #rule_list.fetch("default_user")
      else
        @lead.client_assignee_id = rule_list.fetch("default_user").sample #rule_list.fetch("default_user")
      end
      break
    end
    puts pattern
  end
  end
end