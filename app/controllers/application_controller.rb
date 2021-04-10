class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_cart
  include Pundit
  include CurrentCart

  after_action :verify_authorized, except: [:index, :dashboard], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :dashboard], unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
