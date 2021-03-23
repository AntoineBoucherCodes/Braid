class DashboardController < ApplicationController
  before_action :require_login

  def dashboard
    # Your Stores
    @stores = policy_scope(Store).order(created_at: :desc)

    # Your Lobbies

    # Your Single Buy orders

    # Your Group Buy orders
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
