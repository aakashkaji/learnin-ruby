require 'test_helper'

class RuleAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rule_assignment = rule_assignments(:one)
  end

  test "should get index" do
    get rule_assignments_url, as: :json
    assert_response :success
  end

  test "should create rule_assignment" do
    assert_difference('RuleAssignment.count') do
      post rule_assignments_url, params: { rule_assignment: { assign: @rule_assignment.assign, default_rule: @rule_assignment.default_rule, optional: @rule_assignment.optional, pattern: @rule_assignment.pattern, rule_name: @rule_assignment.rule_name } }, as: :json
    end

    assert_response 201
  end

  test "should show rule_assignment" do
    get rule_assignment_url(@rule_assignment), as: :json
    assert_response :success
  end

  test "should update rule_assignment" do
    patch rule_assignment_url(@rule_assignment), params: { rule_assignment: { assign: @rule_assignment.assign, default_rule: @rule_assignment.default_rule, optional: @rule_assignment.optional, pattern: @rule_assignment.pattern, rule_name: @rule_assignment.rule_name } }, as: :json
    assert_response 200
  end

  test "should destroy rule_assignment" do
    assert_difference('RuleAssignment.count', -1) do
      delete rule_assignment_url(@rule_assignment), as: :json
    end

    assert_response 204
  end
end
