class Api::V1::UsersController < Api::BaseController
  before_action :resources, only: [:index]
  before_action :resource, only: %i[show update destroy]

  def index
    authorize resources
    json_response(resources)
  end

  def show
    json_response(resource)
  end

  def update
    resource.update(user_params)
    head :no_content
  end

  def destroy
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
