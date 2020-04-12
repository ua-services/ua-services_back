class Api::V1::EmployeesController < Api::BaseController
  before_action :resources, only: [:index]
  before_action :resource, only: %i[show update destroy]

  def index
    json_response(resources)
  end

  def show
    json_response(resource)
  end

  def update
    resource.update(employee_params)
    json_response(resource)
  end

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
