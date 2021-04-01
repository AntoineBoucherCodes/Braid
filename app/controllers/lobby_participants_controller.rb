class LobbyParticipantsController < ApplicationController
  before_action :require_login

  def new
    @lobby_participant = LobbyParticipant.new
    @lobby = Lobby.find(params[:lobby_id])
    authorize @lobby_participant
  end
  
  def create
    @lobby_participant = LobbyParticipant.new(lobby_participant_params)
    @lobby = Lobby.find(params[:lobby_id])
    @lobby_participant.lobby = @lobby
    @lobby_participant.save
    redirect_to lobby_path(@lobby)
    authorize @lobby_participant
  end

  def destroy
    @lobby.destroy
    redirect_to dashboard_path
    authorize @lobby
  end
  
  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end

  def lobby_participant_params
    params.require(:lobby_participant).permit(:user_id)
  end
end
