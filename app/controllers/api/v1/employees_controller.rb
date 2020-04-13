# Employee actions
class Api::V1::EmployeesController < Api::BaseController
  before_action :resources, only: [:index]
  before_action :resource, only: %i[show update destroy]

  # Employees listing
  def index
    json_response(resources)
  end

  # Detailed employee information
  def show
    json_response(resource)
  end

  # Update employee information
  def update
    resource.update(employee_params)
    json_response(resource)
  end

  # Destroy employee
  def destroy
    resource.destroy
    head :no_content
  end

  private

  def employee_params
    params.permit(:first_name, :last_name, :address, :phone_number,
                  employee_information_attributes: [:agency_id])
  end

  def resources
    Employee.all
  end

  def resource
    Employee.find(params[:id])
  end
end
