class CategoriePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def categories_index?
    true
  end
end
