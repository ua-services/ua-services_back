# Agency actions
class Api::V1::AgenciesController < Api::BaseController
  before_action :resources, only: [:index]
  before_action :resource, only: %i[show update destroy]

  # Agency listing
  def index
    json_response(AgencyBlueprint.render(resources, view: :normal))
  end

  # Create agency
  def create
    resource = Agency.create(agency_params)
    json_response(AgencyBlueprint.render(resource, view: :normal))
  end

  # Detailed agency information
  def show
    json_response(AgencyBlueprint.render(resource, view: :normal))
  end

  # Update agency information
  def update
    resource.update(agency_params)
    json_response(AgencyBlueprint.render(resource, view: :normal))
  end

  # Delete agency
  def destroy
    resource.destroy
    head :no_content
  end

  private

  def agency_params
    params.permit(:name, :address, :phone_number, :service_industry, :email, :short_description, :lng, :lat)
  end

  def resources
    Agency.all
  end

  def resource
    Agency.find(params[:id])
  end
end
