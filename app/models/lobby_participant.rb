class LobbyParticipant < ApplicationRecord
  belongs_to :lobby
  belongs_to :user

  def cart
    self.user.carts.last
  end
end
