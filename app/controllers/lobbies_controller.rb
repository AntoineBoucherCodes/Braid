class LobbiesController < ApplicationController
  before_action :require_login, except: [:show]
  
  def show
    @lobby = Lobby.find(params[:id])
    @lobby.store = @store
  end

  def new
    @lobby = Lobby.new
    authorize @lobby
  end

  def create
    @lobby = Lobby.new(lobby_params)
    # @user = current_user
    # @lobby.name = "#{@user.name}' lobby"
    @lobby.user = current_user
    @lobby.save
    redirect_to lobby_path(@lobby)
  end

  def edit
  end

  def update
  end

  def destroy
    @lobby = Lobby.find(params[:id])
    @lobby.destroy
    redirect_to root_path
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end

  def lobby_params
    params.require(:lobby).permit(:name)
  end
end
