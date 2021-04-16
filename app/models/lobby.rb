class Lobby < ApplicationRecord
  belongs_to :user
  has_many :lobby_participants, dependent: :destroy


  def total_price
    user_total = self.user.carts.last.total_price

    participants_total = 0
    self.lobby_participants.each do |lobby_participant|
      if lobby_participant.cart == nil
        participants_total
      else
        cart_total = lobby_participant.cart.total_price
        participants_total += cart_total
        participants_total
      end
    end
    total = user_total + participants_total
  end

  def ready?
    status = false
    self.lobby_participants.each do |lobby_participant|
      if lobby_participant.invitation_status == 'Pending'
        return status
      else
        status = true
      end
    end
    return status
  end
end
