class AddUserRefToLobbies < ActiveRecord::Migration[6.0]
  def change
    add_reference :lobbies, :user, null: false, foreign_key: true
  end
end
