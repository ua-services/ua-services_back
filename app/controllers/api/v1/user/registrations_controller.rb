# frozen_string_literal: true

class Api::V1::User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  respond_to :json

  # GET /resource/sign_up
  # def new
  #  super
  # end

  # POST /resource
  def create
    super if sign_up_params[:role] == 'consumer'
    if sign_up_params[:role] == 'agency_admin'
      # TODO: raise error if without own_agency_attributes
      resource = Employee.new(sign_up_params)
      resource.save
      respond_with resource, location: after_sign_up_path_for(resource)
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    permitted_keys_based_on_role = define_permitted_keys(params[:user][:role])
    devise_parameter_sanitizer.permit(:sign_up, keys: permitted_keys_based_on_role)
  end

  def define_permitted_keys(role)
    case role
    when 'consumer'
      %i[first_name last_name role address phone_number password password_confirmation]
    when 'agency_admin'
      [:first_name, :last_name, :role, :address, :phone_number, :password, :password_confirmation,
       own_agency_attributes: %i[name email]]
    when 'individual_employee'
      [:first_name, :last_name, :role, :address, :phone_number, :password, :password_confirmation,
       own_agency_attributes: %i[name email]]
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
