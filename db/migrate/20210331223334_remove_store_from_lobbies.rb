class RemoveStoreFromLobbies < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lobbies, :store, null: false, foreign_key: true
  end
end
