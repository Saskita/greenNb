class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    show?
  end

  def edit?
    record.plant.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
