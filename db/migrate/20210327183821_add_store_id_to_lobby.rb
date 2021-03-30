class AddStoreIdToLobby < ActiveRecord::Migration[6.0]
  def change
    add_reference :lobbies, :store, null: false, foreign_key: true
  end
end
