class RuleAssignmentsController < ApplicationController
  before_action :set_rule_assignment, only: [:show, :update, :destroy]

  # GET /rule_assignments
  def index
    @rule_assignments = RuleAssignment.all

    render json: @rule_assignments
  end

  # GET /rule_assignments/1
  def show
    render json: @rule_assignment
  end

  # POST /rule_assignments
  def create
    @rule_assignment = RuleAssignment.new(rule_assignment_params)

    if @rule_assignment.save
      render json: @rule_assignment, status: :created, location: @rule_assignment
    else
      render json: @rule_assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rule_assignments/1
  def update
    if @rule_assignment.update(rule_assignment_params)
      render json: @rule_assignment
    else
      render json: @rule_assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rule_assignments/1
  def destroy
    @rule_assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule_assignment
      @rule_assignment = RuleAssignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rule_assignment_params
      params.require(:rule_assignment).permit(:rule_name, :default_rule, :pattern, {optional:[ :field, :operator, values: []]}, assign: {})
    end
end
