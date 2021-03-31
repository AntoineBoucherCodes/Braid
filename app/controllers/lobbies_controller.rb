class LobbiesController < ApplicationController

  before_action :require_login, except: [:show]
  def show
    @lobby = Lobby.find(params[:id])
    @lobby.store = @store
  end

  def create
    @lobby = Lobby.new
    @user = current_user
    @lobby.name = "#{@user.name}' lobby"
    @lobby.user = @user
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
end
