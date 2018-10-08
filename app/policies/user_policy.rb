# $ rails g pundit:policy user

class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    user.admin? && user.moderator?
  end

  def destroy?
    user.admin?
  end

end
