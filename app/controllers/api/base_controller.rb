class Api::BaseController < ApplicationController
  include ActionController::MimeResponds
  include Response
  include ExceptionHandler
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :authenticate_user!

  respond_to :json

  private

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    render json: { auth_error: I18n.t("#{policy_name}.#{exception.query}", scope: 'pundit', default: :default) },
           status: 401
  end
end
