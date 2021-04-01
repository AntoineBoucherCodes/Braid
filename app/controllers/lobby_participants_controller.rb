class LobbyParticipantsController < ApplicationController
  before_action :require_login

  def new
    @lobby_participant = LobbyParticipant.new
    @lobby = Lobby.find(params[:lobby_id])
    authorize @lobby_participant
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
