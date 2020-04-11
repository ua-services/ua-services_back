class Api::V1::UsersController < Api::BaseController
  before_action :resources, only: [:index]
  before_action :resource, only: %i[show update destroy]

  def index
    authorize resources
    json_response(resources)
  end

  def show
    authorize resource
    json_response(resource)
  end

  def update
    authorize resource
    resource.update(user_params)
    json_response(resource)
  end

  def destroy
    authorize resource
    resource.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :address, :phone_number)
  end

  def resources
    User.all
  end

  def resource
    User.find(params[:id])
  end
end
