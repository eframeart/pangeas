class ApplicationController < ActionController::Base
  include Pundit

  #protect_from_forgery with: :exception
  helper_method :namespace
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # after_action :verify_authorized, unless: -> { devise_controller? }
  # after_action :verify_policy_scoped, unless: -> { devise_controller? }
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :get_sections

  def get_sections
    @sections = Section.order(:id).all
  end

  def namespace
    names = self.class.to_s.split('::')
    return "null" if names.length < 2
    names[0..(names.length-2)].map(&:downcase).join('_')
  end

  def user_not_authorized(exception)
    flash[:alert] = t('flash.not_authorized')
    redirect_to(request.referrer || root_path)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :first_name, :last_name, :email, :password, :password_confirmation
    ])
  end
end
