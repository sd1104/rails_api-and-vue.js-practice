class Api::V1::EmployeesController < ApplicationController
  before_action :set_employee, only: :show

rescue_from ActiveRecord::RecordnotFound do |exception|
  render json: { error: '404 not found' }, status: 404
end

  def inex
    employees = Employee.all
    render json: employees
  end

  def show
    render json: @employee
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
