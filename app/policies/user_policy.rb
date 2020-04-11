class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user
  end

  def show?
    user
  end

  def update?
    user
  end

  def destroy
    user
  end
end
