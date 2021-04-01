class CreateLobbyParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :lobby_participants do |t|
      t.string :invitation_status, default: 'Pending'
      t.references :lobby, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
