class DashboardController < ApplicationController
  before_action :require_login

  def dashboard
    # Your Stores
    @stores = policy_scope(Store).where(user: current_user)

    # Your Lobbies
    @lobbies = policy_scope(Lobby).where(user: current_user)

    # All lobby_participants where you are the user
    @lobby_participants = policy_scope(LobbyParticipant).where(user: current_user)

    # Your Single Buy orders

    # Your Group Buy orders

  end

  def accept
    @lobby_participant = LobbyParticipant.find(params[:id])
    @lobby_participant.invitation_status = 'Accepted'
    @lobby_participant.save
    redirect_to dashboard_path
    authorize @lobby_participant
  end

  def decline
    @lobby_participant = LobbyParticipant.find(params[:id])
    @lobby_participant.invitation_status = 'Declined'
    @lobby_participant.save
    redirect_to dashboard_path
    authorize @lobby_participant
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
