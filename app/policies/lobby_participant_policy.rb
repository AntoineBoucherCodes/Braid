class LobbyParticipantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end

  def accept?
    true
  end

  def decline?
    true
  end
end
