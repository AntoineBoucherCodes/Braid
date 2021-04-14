class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_cart
  include Pundit
  include CurrentCart

  after_action :verify_authorized, except: [:index, :dashboard], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :dashboard], unless: :skip_pundit?

  def cart
    @cart = current_user.carts.last
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
