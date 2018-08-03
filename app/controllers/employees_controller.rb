class EmployeesController < ApplicationController

  def create

  @employee = Employee.new(employee_params)
  @employee.company = Company.find(params[:company_id])
  @employee.save
  # redirect_to category_path(@product.category)
  redirect_to @employee.company

  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end

end
