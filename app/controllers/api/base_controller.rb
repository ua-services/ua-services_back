class Api::BaseController < ApplicationController
  include ActionController::MimeResponds
  include Response
  include ExceptionHandler

  before_action :authenticate_user!

  respond_to :json
end
