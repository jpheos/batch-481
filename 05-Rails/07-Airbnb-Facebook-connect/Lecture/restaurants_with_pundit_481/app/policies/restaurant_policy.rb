class RestaurantPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    owner? || user.admin?
  end

  def destroy?
    owner?
  end

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def owner?
    record.user == user
  end
end
