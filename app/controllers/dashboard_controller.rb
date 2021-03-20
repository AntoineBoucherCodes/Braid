class DashboardController < ApplicationController
  before_action :require_login

  def dashboard
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
