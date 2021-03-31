class Lobby < ApplicationRecord
  belongs_to :user
  has_many :lobby_participants
end
